#include "config.h"
#include "p_mobj.h"
#include <3ds.h>
#include <stdio.h>
#include <memory.h>
#include "sounds.h"
#include "doomstat.h"
#include "s_sound.h"
#include "m_random.h"
#include "w_wad.h"
#include "lprintf.h"
#include "r_main.h"

static boolean	snd_init = false;
//static boolean	snd_firsttime = true;

void MIX_Update_();



#define S_CLOSE_DIST (160 * FRACUNIT)
#define S_CLIPPING_DIST (1200 * FRACUNIT)
#define S_STEREO_SWING (96 * FRACUNIT)
#define S_ATTENUATOR ((S_CLIPPING_DIST - S_CLOSE_DIST) >> FRACBITS)

#define MAX_CHANNELS	22

// Adjustable by menu.
#define NORM_PITCH 128
#define NORM_PRIORITY 64
#define NORM_SEP 128

typedef struct
{
	sfxinfo_t *sfxinfo;  // sound information (if null, channel avail.)
	void *origin;
	int is_pickup;       // killough 4/25/98: whether sound is a player's weapon
	long pitch;
	//int priority;
	int ch_num;
	void *ch_data;
	int len;
	int pos;
	int left, right;
} channel_t;

static channel_t channel[MAX_CHANNELS];

#define	PAINTBUFFER_SIZE	512
typedef struct
{
	int left;
	int right;
} portable_samplepair_t;
portable_samplepair_t paintbuffer[PAINTBUFFER_SIZE];

extern sfxinfo_t S_sfx[];

static int snd_channels = 2;
static int snd_samplebits = 16;
static int snd_speed = 11025;
static int snd_samples;
static int snd_samplepos;
static byte* snd_buffer;
static int snd_scaletable[32][256];

int I_GetSfxLumpNum(sfxinfo_t* sfx)
{
	char namebuf[12];
	sprintf(namebuf, "ds%s", sfx->name);
	return W_GetNumForName(namebuf);
}


static void I_StopChannel(channel_t *c) {
	if (c == 0 || c->sfxinfo == 0) {
		return;
	}

	//printf("end: %2d %8s\n", c-channel, c->sfxinfo->name);

	if (c->sfxinfo->usefulness > 0)
	{
		c->sfxinfo->usefulness--;
	}
	if (c->sfxinfo->usefulness < 0) {
		c->sfxinfo->usefulness = 0;
	}
	if (c->sfxinfo->usefulness == 0) {
		W_UnlockLumpNum(c->sfxinfo->lumpnum);
		c->sfxinfo->data = 0;
	}
	c->origin = 0;
	c->sfxinfo = 0;
}

static int I_getChannel(void *origin, sfxinfo_t *sfxinfo, int is_pickup)
{
	// channel number to use
	int cnum;

	// stop pickup on same channel
	for (cnum = 0; cnum < MAX_CHANNELS; cnum++) {
		if (channel[cnum].sfxinfo && origin && 
			channel[cnum].origin == origin &&
			channel[cnum].is_pickup == is_pickup) {
			//printf("I_getChannel stop: %d\n", cnum);
			I_StopChannel(&channel[cnum]);
			break;
		}
	}

	//find an open channel
	for (cnum = 0; cnum < MAX_CHANNELS; cnum++) {
		if (channel[cnum].sfxinfo == 0) {
			break;
		}
	}

	//printf("  channel %d\n", cnum);
	// None available
	if (cnum == MAX_CHANNELS) {
		// Look for lower priority
		for (cnum = 0; cnum < MAX_CHANNELS; cnum++) {
			if (channel[cnum].sfxinfo->priority >= sfxinfo->priority) {
				//printf("I_getChannel priority: %d %d\n", cnum, channel[cnum].sfxinfo->priority,sfxinfo->priority);
				break;
			}
		}
		if (cnum == MAX_CHANNELS) {
			return -1;                  // No lower priority.  Sorry, Charlie.
		}
		else {
			//printf("I_getChannel kick: %d\n", cnum);
			I_StopChannel(&channel[cnum]);        // Otherwise, kick out lower priority.
		}
	}

	return cnum;
}

int I_AdjustSoundParams(mobj_t *listener, mobj_t *source, int *vol, int *sep, int *dist)
{
	fixed_t        approx_dist;
	fixed_t        adx;
	fixed_t        ady;
	angle_t        angle;

	// calculate the distance to sound origin
	//  and clip it if necessary
	adx = abs(listener->x - source->x);
	ady = abs(listener->y - source->y);

	// From _GG1_ p.428. Appox. eucledian distance fast.
	approx_dist = adx + ady - ((adx < ady ? adx : ady) >> 1);

	if (gamemap != 8 && approx_dist > S_CLIPPING_DIST)
	{
		return 0;
	}

	// angle of source to listener
	angle = R_PointToAngle2(listener->x,
		listener->y,
		source->x,
		source->y);

	if (angle > listener->angle)
	{
		angle = angle - listener->angle;
	}
	else
	{
		angle = angle + (0xffffffff - listener->angle);
	}

	angle >>= ANGLETOFINESHIFT;

	// stereo separation
	*sep = 128 - (FixedMul(S_STEREO_SWING, finesine[angle]) >> FRACBITS);
	*dist = approx_dist >> FRACBITS;

	// volume calculation
	if (approx_dist < S_CLOSE_DIST)
	{
		*vol = snd_SfxVolume;
	}
	else if (gamemap == 8)
	{
		if (approx_dist > S_CLIPPING_DIST)
		{
			approx_dist = S_CLIPPING_DIST;
		}

		*vol = 15 + ((snd_SfxVolume - 15)
			*((S_CLIPPING_DIST - approx_dist) >> FRACBITS))
			/ S_ATTENUATOR;
	}
	else
	{
		// distance effect
		*vol = (snd_SfxVolume
			* ((S_CLIPPING_DIST - approx_dist) >> FRACBITS))
			/ S_ATTENUATOR;
	}

	return (*vol > 0);
}

int I_StartSound(sfxinfo_t *sfx, int cnum, int vol, int sep, int pitch, int priority, int is_pickup, void *origin)
{
	byte *data;
	int lump;
	int sfx_len;
	channel_t *ch;
	size_t len;

	if ((cnum < 0) || (cnum >= MAX_CHANNELS)) {
#ifdef RANGECHECK
		I_Error("I_StartSound: handle out of range");
#else
		return -1;
#endif
	}

	lump = sfx->lumpnum;

	// We will handle the new SFX.
	// Set pointer to raw data.
	len = W_LumpLength(lump);

	// e6y: Crash with zero-length sounds.
	// Example wad: dakills (http://www.doomworld.com/idgames/index.php?id=2803)
	// The entries DSBSPWLK, DSBSPACT, DSSWTCHN and DSSWTCHX are all zero-length sounds
	if (len <= 8) {
		return -1;
	}

	/* Find padded length */
	len -= 8;

	// increase the usefulness
	sfx->usefulness++;
	if (sfx->usefulness <= 0) {
		sfx->usefulness = 1;
	}

	if (sfx->data == 0) {
		data = W_LockLumpNum(lump);
		sfx_len = (data[7] << 24) | (data[6] << 16) | (data[5] << 8) | data[4];
		if (data[0] != 0x03 || data[1] != 0x00 || sfx_len > len || sfx_len <= 48) {
			sfx->usefulness--;
			W_UnlockLumpNum(lump);
			return -1;
		}
		data += 8;
		sfx_len -= 32;
		sfx->data = data;
	}
	else {
		data = sfx->data;
	}
	ch = &channel[cnum];
	ch->sfxinfo = sfx;
	ch->origin = origin;
	ch->is_pickup = is_pickup;         // killough 4/25/98
	ch->pitch = pitch;
	ch->left = ((256 - sep) * vol) / 15;
	ch->right = ((sep)* vol) / 15;
	ch->pos = 0;
	ch->ch_data = data;
	ch->len = len;
	//printf("start: %2d %8.8s %d %d %p\n", cnum, sfx->name, ch->left, ch->right, ch->ch_data);
	return cnum;
}

void I_StartSoundAtVolume(void *origin_p, int sfx_id, int volume)
{
	int sep, pitch, priority, cnum, is_pickup;
	sfxinfo_t *sfx;
	mobj_t *origin = (mobj_t *)origin_p;

	if (!snd_init) {
		return;
	}

	is_pickup = sfx_id & PICKUP_SOUND || sfx_id == sfx_oof || (compatibility_level >= prboom_2_compatibility && sfx_id == sfx_noway); // killough 4/25/98
	sfx_id &= ~PICKUP_SOUND;

	// check for bogus sound #
	if (sfx_id < 1 || sfx_id > NUMSFX)
		I_Error("S_StartSoundAtVolume: Bad sfx #: %d", sfx_id);

	sfx = &S_sfx[sfx_id];
	//printf(" sound %8s  %d\n", sfx->name, volume);

	// Initialize sound parameters
	if (sfx->link)
	{
		pitch = sfx->pitch;
		priority = sfx->priority;
		volume += sfx->volume;

		if (volume < 1)
			return;

		if (volume > snd_SfxVolume)
			volume = snd_SfxVolume;
	}
	else
	{
		pitch = NORM_PITCH;
		priority = NORM_PRIORITY;
	}

	// Check to see if it is audible, modify the params
	// killough 3/7/98, 4/25/98: code rearranged slightly

	if (!origin || origin == players[displayplayer].mo) {
		sep = NORM_SEP;
	}
	else
		if (!I_AdjustSoundParams(players[displayplayer].mo, origin, &volume, &sep, &pitch))
			return;
		else
			if (origin->x == players[displayplayer].mo->x &&
				origin->y == players[displayplayer].mo->y)
				sep = NORM_SEP;

	// hacks to vary the sfx pitches
	if (sfx_id >= sfx_sawup && sfx_id <= sfx_sawhit) {
		pitch += 8 - (M_Random() & 15);
	}
	else {
		if (sfx_id != sfx_itemup && sfx_id != sfx_tink) {
			pitch += 16 - (M_Random() & 31);
		}
	}

	if (pitch<0)
		pitch = 0;

	if (pitch>255)
		pitch = 255;

	// kill old sound
	for (cnum = 0; cnum < MAX_CHANNELS; cnum++) {
		if (channel[cnum].sfxinfo && channel[cnum].origin == origin &&
			(comp[comp_sound] || channel[cnum].is_pickup == is_pickup))
		{
			I_StopChannel(&channel[cnum]);
			break;
		}
	}

	// try to find a channel
	cnum = I_getChannel(origin, sfx, is_pickup);

	if (cnum<0)
		return;

	//printf(" sound %d\n", sfx->lumpnum);
	// get lumpnum if necessary
	// killough 2/28/98: make missing sounds non-fatal
	if (sfx->lumpnum <= 0) {
		sfx->lumpnum = I_GetSfxLumpNum(sfx);
		if (sfx->lumpnum <= 0) {
			return;
		}
	}
	//printf(" lump %d\n", sfx->lumpnum);

	I_StartSound(sfx, cnum, volume, sep, pitch, priority, is_pickup, origin_p);
}

/*--------------------------------------------------------------------*/

void S_StartSound(void *origin, int sound_id) {
	I_StartSoundAtVolume(origin, sound_id, snd_SfxVolume);
	//printf("S_StartSound: %p %d %d\n", origin, sound_id, snd_SfxVolume);
}

void S_StopSound(void* origin) {
	int cnum;

	if (!snd_init)
		return;

	for (cnum = 0; cnum < MAX_CHANNELS; cnum++) {
		if (channel[cnum].sfxinfo && channel[cnum].origin == origin) {
			I_StopChannel(&channel[cnum]);
			break;
		}
	}
}

void S_StopAllSound(void)
{
	int cnum;

	if (!snd_init)
		return;

	for (cnum = 0; cnum < MAX_CHANNELS; cnum++) {
		I_StopChannel(&channel[cnum]);
	}
}

void S_Stop(void) {
	S_StopAllSound();
}

void MIX_UpdateSounds(mobj_t *listener) {
	int i, dist, vol;
	int sep;
	int priority;

	if (!snd_init) {
		return;
	}

	if (snd_SfxVolume == 0)
	{
		return;
	}

	if (listener) {
		for (i = 0; i < MAX_CHANNELS; i++)
		{
			if (channel[i].sfxinfo == 0 || 
				channel[i].origin == 0 || 
				channel[i].origin == players[displayplayer].mo) {
				continue;
			}
			if (I_AdjustSoundParams(listener, channel[i].origin, &vol, &sep, &dist)) {
				priority = channel[i].sfxinfo->priority;
				priority *= (10 - (dist >> 8));
				//channel[i].priority = priority;
				channel[i].left = ((255 - sep) * vol) / 15;
				channel[i].right = ((sep)* vol) / 15;
			}
			else {
				channel[i].left = 0;
				channel[i].right = 0;
			}
			//printf("AGAIN %d %d - %d %d\n", sep, vol, channel[i].left, channel[i].right);
		}
	}
	MIX_Update_();
}

void MIX_InitScaletable(void)
{
	int		i, j;

	for (i = 0; i<32; i++)
		for (j = 0; j<256; j++)
			snd_scaletable[i][j] = ((signed char)j) * i * 8;
}

#define DSP_MIX_CHANNEL			1

#define	WAV_BUFFERS				128
#define	WAV_MASK				0x7F
#define	WAV_BUFFER_SIZE			0x0400
#define SECONDARY_BUFFER_SIZE	0x10000

static int	sample16;
static int	snd_sent, snd_completed;

static int	gSndBufSize = 0;
static ndspWaveBuf gWavebuf[WAV_BUFFERS];
static float gMix[12];

void ndsp_submit(void)
{
	if (!snd_init)
		return;

	//printf("%d %d\n", snd_sent, snd_completed);
	//
	// find which sound blocks have completed
	//
	while (1)
	{
		if (snd_completed == snd_sent)
		{
			//printf("Sound overrun\n");
			break;
		}
		if (gWavebuf[snd_completed & WAV_MASK].status != NDSP_WBUF_DONE) {
			break;
		}
		snd_completed++;	// this buffer has been played
		//printf("snd_completed++: %d\n", snd_completed);
	}

	//
	// submit two new sound blocks
	//
	while (((snd_sent - snd_completed) >> sample16) < 4)
	{
		//printf("snd_sent: %d %d %d\n", snd_sent, snd_completed, ((snd_sent - snd_completed) >> sample16));
		//h = lpWaveHdr + (snd_sent&WAV_MASK);
		DSP_FlushDataCache(gWavebuf[(snd_sent&WAV_MASK)].data_vaddr, WAV_BUFFER_SIZE);
		DSP_FlushDataCache(&gWavebuf[(snd_sent&WAV_MASK)], sizeof(ndspWaveBuf));
		ndspChnWaveBufAdd(DSP_MIX_CHANNEL, &gWavebuf[(snd_sent&WAV_MASK)]);
		snd_sent++;
		/*
		* Now the data block can be sent to the output device. The
		* waveOutWrite function returns immediately and waveform
		* data is sent to the output device in the background.
		*/
	}
	//printf("ndsp_submit: %d %d\n", snd_sent, snd_completed);
	svcSleepThread(20000);
}

int ndsp_dmapos(void)
{
	int		s;

	if (!snd_init)
	{
		return 0;
	}
	s = snd_sent * WAV_BUFFER_SIZE;

	s >>= sample16;

	s &= (snd_samples - 1);

	return s;
}

void ndsp_init() {
	float mix[12] = {
		1.0f, 1.0f,
		0.0f, 0.0f,
		0.0f, 0.0f,
		0.0f, 0.0f,
		0.0f, 0.0f,
		0.0f, 0.0f
	};
	int i;

	snd_sent = 0;
	snd_completed = 0;

	gSndBufSize = WAV_BUFFERS*WAV_BUFFER_SIZE;
	void *lpData = linearAlloc(gSndBufSize*2);
	if (!lpData)
	{
		printf("Sound: Out of memory.\n");
		return;
	}
	memset(lpData, 0, gSndBufSize);

	ndspChnSetInterp(DSP_MIX_CHANNEL, NDSP_INTERP_NONE);
	ndspChnSetRate(DSP_MIX_CHANNEL, (float)snd_speed);
	ndspChnSetFormat(DSP_MIX_CHANNEL, NDSP_FORMAT_STEREO_PCM16);
	memset(gWavebuf, 0, sizeof(ndspWaveBuf)*WAV_BUFFERS);
	memset(gMix, 0, sizeof(gMix));
	DSP_FlushDataCache(lpData, gSndBufSize);

	for (i = 0; i<WAV_BUFFERS; i++)
	{
		gWavebuf[i].nsamples = WAV_BUFFER_SIZE / (snd_channels * snd_samplebits / 8);
		gWavebuf[i].looping = false;
		gWavebuf[i].status = NDSP_WBUF_FREE;
		gWavebuf[i].data_vaddr = lpData + i*WAV_BUFFER_SIZE;
	}

	snd_samples = gSndBufSize / (snd_samplebits / 8);
	snd_samplepos = 0;
	snd_buffer = (byte *)lpData;
	sample16 = (snd_samplebits / 8) - 1;

	ndspChnSetMix(DSP_MIX_CHANNEL, mix);
	snd_init = true;
}

void ndsp_exit() {
	if (snd_init) {
		ndspChnWaveBufClear(DSP_MIX_CHANNEL);
		svcSleepThread(20000);

		snd_init = false;
	}
}

int MIX_dmapos() {
	return ndsp_dmapos();
}


void MIX_init() {
	memset(channel, 0, sizeof(channel));
	MIX_InitScaletable();
	ndsp_init();
}

void MIX_exit() {
	ndsp_exit();
}

static int soundtime;
static int paintedtime;

void I_PaintChannelFrom8(channel_t *ch, sfxinfo_t *sfx, int count)
{
	int 	data;
	int		*lscale, *rscale;
	unsigned char *buf;
	int		i;

	if (sfx->data == 0 || count < 0 || count > PAINTBUFFER_SIZE) {
		printf("sfx->data %p %d\n", sfx->data, count);
		while (1);
	}

	if (ch->left > 255)
		ch->left = 255;
	if (ch->right > 255)
		ch->right = 255;

	lscale = snd_scaletable[ch->left >> 3];
	rscale = snd_scaletable[ch->right >> 3];
	buf = ((signed char *)sfx->data) + ch->pos;

	for (i = 0; i<count; i++)
	{
		data = (int)(buf[i] ^ 0x80);
		paintbuffer[i].left += lscale[data];
		paintbuffer[i].right += rscale[data];
	}

	ch->pos += count;
}

static int 	*snd_p, snd_linear_count, snd_vol;
static short	*snd_out;
void I_WriteLinearBlastStereo16(void)
{
	int		i;
	int		val;

	for (i = 0; i<snd_linear_count; i += 2)
	{
		val = (snd_p[i] * snd_vol) >> 8;
		if (val > 0x7fff)
			snd_out[i] = 0x7fff;
		else if (val < (short)0x8000)
			snd_out[i] = (short)0x8000;
		else
			snd_out[i] = val;

		val = (snd_p[i + 1] * snd_vol) >> 8;
		if (val > 0x7fff)
			snd_out[i + 1] = 0x7fff;
		else if (val < (short)0x8000)
			snd_out[i + 1] = (short)0x8000;
		else
			snd_out[i + 1] = val;
	}
}

void I_TransferStereo16(int endtime)
{
	int		lpos;
	int		lpaintedtime;

	snd_vol = 256;// volume.value * 256;
	snd_p = (int *)paintbuffer;
	lpaintedtime = paintedtime;

	while (lpaintedtime < endtime)
	{
		// handle recirculating buffer issues
		lpos = lpaintedtime & ((snd_samples >> 1) - 1);

		snd_out = (short *)snd_buffer + (lpos << 1);

		snd_linear_count = (snd_samples >> 1) - lpos;
		if (lpaintedtime + snd_linear_count > endtime)
			snd_linear_count = endtime - lpaintedtime;

		/*if (lpos + snd_linear_count > snd_samples) {
			printf("here I AM!!!\n");
			while (1);
		}*/

		snd_linear_count <<= 1;

		// write a linear blast of samples
		I_WriteLinearBlastStereo16();

		snd_p += snd_linear_count;
		lpaintedtime += (snd_linear_count >> 1);
	}

}

void I_PaintChannels(int endtime)
{
	int 	i;
	int 	end;
	channel_t *ch;
	sfxinfo_t *sfx;
	int		ltime, count, mixed = 0, paint_count;
	
	//printf("paint: %8d %8d %8d\n", paintedtime, endtime, endtime-paintedtime);

	while (paintedtime < endtime)
	{
		// if paintbuffer is smaller than DMA buffer
		end = endtime;
		if (endtime - paintedtime > PAINTBUFFER_SIZE)
			end = paintedtime + PAINTBUFFER_SIZE;

		paint_count = end - paintedtime;
		// clear the paint buffer
		memset(paintbuffer, 0, paint_count * sizeof(portable_samplepair_t));

		// paint in the channels.
		for (i = 0; i<MAX_CHANNELS; i++)
		{
			ch = &channel[i];
			if (!ch->sfxinfo) {
				continue;
			}
			if (ch->left <= 0 && ch->right <= 0) {
				//printf("no volume\n");
				continue;
			}
			if (ch->pos >= ch->len)
			{
				//printf("at end\n");
				I_StopChannel(ch);
				//printf("sound-a ended %d %d\n", ltime, ch->end);
				continue;
			}

			sfx = ch->sfxinfo;
			ltime = paintedtime;
			//printf("mixing %d %d %d %d %8s\n", ltime, end, ch->pos, ch->len, ch->sfxinfo->name);
			//printf("mixing: %8.8s %d %d %d %d\n", sfx->name, ch->left, ch->right, ch->pos, ch->len);
			//if (sfx->snd_ptr == NULL)
			//{
			//sfx->snd_ptr = W_CacheLumpNum(sfx->lumpnum, PU_CACHE);
			//}

			if (ltime < end)
			{
				count = ch->len - ch->pos;
				if (count > paint_count) {
					count = paint_count;
				}
				if (count > 0)
				{
					I_PaintChannelFrom8(ch, sfx, count);
					mixed++;
					ltime += count;
				}
			}
		}

		// transfer out according to DMA format
		I_TransferStereo16(end);
		paintedtime = end;
	}

	if (mixed > 0) {
		//printf("mixed: %d\n", mixed);
	}
}

void GetSoundtime(void)
{
	int		samplepos;
	static	int		buffers;
	static	int		oldsamplepos;
	int		fullsamples;

	fullsamples = snd_samples / snd_channels;

	// it is possible to miscount buffers if it has wrapped twice between
	// calls to S_Update.  Oh well.
	samplepos = ndsp_dmapos();

	if (samplepos < oldsamplepos)
	{
		buffers++;					// buffer wrapped

		if (paintedtime > 0x40000000)
		{	// time to chop things off to avoid 32 bit limits
			buffers = 0;
			paintedtime = fullsamples;
			S_StopAllSound();
		}
	}
	oldsamplepos = samplepos;

	soundtime = buffers*fullsamples + samplepos / snd_channels;
}

void MIX_Update_() {
	unsigned        endtime;
	int				samps;

	if (!snd_init) {
		return;
	}

	//printf("MIX_Update_\n");

	// Updates DMA time
	GetSoundtime();

	// check to make sure that we haven't overshot
	if (paintedtime < soundtime)
	{
		//Con_Printf ("S_Update_ : overflow\n");
		paintedtime = soundtime;
	}

	// mix ahead of current position
	endtime = soundtime + 0.05f * snd_speed;
	samps = snd_samples >> (snd_channels - 1);
	if (endtime - soundtime > samps)
		endtime = soundtime + samps;

	//printf("%10d %10d %10d\n", soundtime, paintedtime, endtime);
	I_PaintChannels(endtime);
	ndsp_submit();
}

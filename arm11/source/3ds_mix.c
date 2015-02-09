#include "ds_mix.h"
#include "doomstat.h"
#include "sounds.h"
#include "s_sound.h"
#include "m_random.h"
#include "r_main.h"
#include "lprintf.h"
#include "w_wad.h"
#include <3ds.h>

extern int snd_card;
extern boolean nosfxparm;

#define S_CLOSE_DIST (160 * FRACUNIT)
#define S_CLIPPING_DIST (1200 * FRACUNIT)
#define S_STEREO_SWING (96 * FRACUNIT)
#define S_ATTENUATOR ((S_CLIPPING_DIST - S_CLOSE_DIST) >> FRACBITS)

#define MAX_CHANNELS	16

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
	int end;
	int pos;
	int left, right;
} channel_t;

static channel_t channel[MAX_CHANNELS];

int			snd_Channels = MAX_CHANNELS;

int			snd_Samples;
int			snd_Speed;

int			soundtime;		// sample PAIRS
int   		paintedtime; 	// sample PAIRS

#define SND_SAMPLES (8192)
byte *c_snd_Buffer_left;// = c_snd_Buffer;
byte *c_snd_Buffer_right;// = c_snd_Buffer + SND_SAMPLES;
u32 c_snd_LPHY;
u32 c_snd_RPHY;

#define	PAINTBUFFER_SIZE	512
typedef struct
{
	int left;
	int right;
} portable_samplepair_t;
portable_samplepair_t paintbuffer[PAINTBUFFER_SIZE];

static int snd_scaletable[32][256];
int audio_initialized = 0;

#if 1

static u64 sound_start;
#define TICKS_PER_SEC 268123480.0

u64 sound_time()
{
	u64 tm = osGetTime() - sound_start;
	return tm;
}

void mix_start() {
	memset(c_snd_Buffer_left, 0, SND_SAMPLES);
	memset(c_snd_Buffer_right, 0, SND_SAMPLES);
	//c_snd_Buffer_left[4] = c_snd_Buffer_left[5] = 0x7f;	// force a pop for debugging
	//c_snd_Buffer_right[4] = c_snd_Buffer_right[5] = 0x7f;	// force a pop for debugging
	GSPGPU_FlushDataCache(NULL, c_snd_Buffer_left, SND_SAMPLES);
	GSPGPU_FlushDataCache(NULL, c_snd_Buffer_right, SND_SAMPLES);
}


void MIX_InitScaletable(void)
{
	int		i, j;

	for (i = 0; i<32; i++)
		for (j = 0; j<256; j++)
			snd_scaletable[i][j] = ((signed char)j) * i * 8;
}

void mix_stop() {
#if 0
	if (sound_left > 0) {
		soundKill(sound_left);
		sound_left = -1;
	}
	if (sound_right > 0) {
		soundKill(sound_right);
		sound_right = -1;
	}
#endif
}

void MIX_init() {

	MIX_InitScaletable();
	
	snd_Samples = SND_SAMPLES;
	snd_Speed = 11025;
	
	c_snd_Buffer_left = linearAlloc(SND_SAMPLES * 2);
	c_snd_Buffer_right = c_snd_Buffer_left + SND_SAMPLES;
	c_snd_LPHY = osConvertVirtToPhys(c_snd_Buffer_left);
	c_snd_RPHY = osConvertVirtToPhys(c_snd_Buffer_right);

	mix_start();

	csndPlaySound(0x8, SOUND_REPEAT | SOUND_FORMAT_8BIT, 11025, (u32*)c_snd_Buffer_left, (u32*)c_snd_Buffer_left, SND_SAMPLES);
	csndPlaySound(0x9, SOUND_REPEAT | SOUND_FORMAT_8BIT, 11025, (u32*)c_snd_Buffer_right, (u32*)c_snd_Buffer_right, SND_SAMPLES);
	sound_start = svcGetSystemTick();
}

void MIX_TransferPaintBuffer(int endtime)
{
	int 	out_idx;
	int 	count, count1, count2, pos;
	int 	out_mask;
	int 	*p;
	int 	step;
	int		val;
	int		snd_vol;
	byte *outl;
	byte *outr;

	p = (int *)paintbuffer;
	count = (endtime - paintedtime);// * shm->channels;
	out_mask = snd_Samples - 1;
	out_idx = paintedtime & out_mask;
	step = 3 - 1;//shm->channels;
	snd_vol = 255;//volume.value*256;


	outl = c_snd_Buffer_left;
	outr = c_snd_Buffer_right;
	while (count--)
	{
		val = *p++;// (*p * snd_vol) >> 8;
		//p += 1;//step;
		if (val > 0x7fff)
			val = 0x7fff;
		else if (val < (short)0x8000)
			val = (short)0x8000;
		outl[out_idx] = (val >> 8);// + 128;

		val = *p++;// (*p * snd_vol) >> 8;
		//p += 1;//step;
		if (val > 0x7fff)
			val = 0x7fff;
		else if (val < (short)0x8000)
			val = (short)0x8000;
		outr[out_idx] = (val >> 8);// + 128;

		out_idx = (out_idx + 1) & out_mask;
	}

}

void MIX_PaintChannelFrom8(channel_t *ch, byte *sfx, int count)
{
	int 	data;
	int		*lscale, *rscale;
	int		i;

	if (ch->left > 255)
		ch->left = 255;
	else if (ch->left < 0)
		ch->left = 0;
	if (ch->right > 255)
		ch->right = 255;
	else if (ch->right < 0)
		ch->right = 0;

	lscale = snd_scaletable[ch->left >> 3];
	rscale = snd_scaletable[ch->right >> 3];
	sfx = sfx + ch->pos;


	for (i = 0; i<count; i++)
	{
		//data = (int)((unsigned char)(sfx[i] - 128));
		data = (int)(sfx[i] ^ 0x80);
		paintbuffer[i].left += lscale[data];
		paintbuffer[i].right += rscale[data];
	}

	ch->pos += count;
}

void MIX_PaintChannels(int endtime)
{
	int 	i;
	int 	end;
	channel_t *ch;
	//channel_t	*sc;
	int		ltime, count, mixed = 0;

	while (paintedtime < endtime)
	{
		// if paintbuffer is smaller than DMA buffer
		end = endtime;
		if (endtime - paintedtime > PAINTBUFFER_SIZE)
			end = paintedtime + PAINTBUFFER_SIZE;

		// clear the paint buffer
		memset(paintbuffer, 0, (end - paintedtime) * sizeof(portable_samplepair_t));

		// paint in the channels.
		ch = channel;
		for (i = 0; i<snd_Channels; i++, ch++)
		{
			if (!ch->sfxinfo) {
				continue;
			}
			if (ch->left <= 0 && ch->right <= 0) {
				if (paintedtime >= ch->end)
				{
					if (ch->sfxinfo->usefulness > 0)
					{
						ch->sfxinfo->usefulness--;
					}
					W_UnlockLumpNum(ch->sfxinfo->lumpnum);
					ch->origin = 0;
					ch->sfxinfo = 0;
					//printf("sound ended %d %d\n", ltime, ch->end);
				}
				continue;
			}

			ltime = paintedtime;
			//printf("mixing %d %d %8s\n", ltime, ch->end, ch->sfxinfo->name);
			//printf("mixing: %8s %d %d\n", ch->sfxinfo->name, ch->left, ch->right);

			while (ltime < end)
			{	// paint up to end
				if (ch->end < end)
					count = ch->end - ltime;
				else
					count = end - ltime;

				if (count > 0)
				{
					MIX_PaintChannelFrom8(ch, (byte *)ch->sfxinfo->data, count);
					mixed++;
					ltime += count;
				}
				if (ltime >= ch->end)
				{
					if (ch->sfxinfo->usefulness > 0)
					{
						ch->sfxinfo->usefulness--;
					}
					W_UnlockLumpNum(ch->sfxinfo->lumpnum);
					ch->origin = 0;
					ch->sfxinfo = 0;
					//printf("sound ended %d %d\n", ltime, ch->end);
					break;
				}
			}
		}

		// transfer out according to DMA format
		MIX_TransferPaintBuffer(end);
		//if (mixed) {
		//	printf("sound: %d %d %d\n", mixed, paintedtime, end);
		//}
		paintedtime = end;
	}
}

#if 1
u64 mixPosition = 0;
int MIX_SamplePos() {
	static int last = 0;
	int pos, diff;
	CSND_ChnInfo musInfo;
	csndGetState(0x9, &musInfo);
	pos = musInfo.samplePAddr - c_snd_RPHY;
	diff = pos - last;
	//check for wrap
	if (diff < 0) diff += SND_SAMPLES;
	last = pos;
	mixPosition += diff;
	return mixPosition;
}

#else
int MIX_SamplePos() {
	//u64 v;

	//v = (snd_Speed * sound_time()) / 1000;

	//return (int)v;
	u64 delta = svcGetSystemTick() - sound_start;
	// Work around the VFP not supporting 64-bit integer <--> floating point conversion
	double temp = (u32)(delta >> 32);
	temp *= 0x100000000ULL;
	temp += (u32)delta;

	delta = (temp * 11025.0) / TICKS_PER_SEC;
	return delta;
}
#endif

void MIX_UpdateTime(void)
{
	soundtime = MIX_SamplePos();
}

void MIX_Update_(void)
{
	unsigned        endtime;
	int				samps;
	int diff;

	//if (!snd_card || nosfxparm)
	//	return;

	if (!audio_initialized) {
		return;
	}


	// Updates DMA time
	MIX_UpdateTime();

	diff = paintedtime - soundtime;
	//iprintf("%d %d %d\n", paintedtime, soundtime, diff);
	// check to make sure that we haven't overshot
	if (diff < 0)
	{
		//iprintf("S_Update_ : overflow\n    %d %d\n", paintedtime, soundtime);
		paintedtime = soundtime;
	}

	// mix ahead of current position
	endtime = soundtime + snd_Speed / 10;//_snd_mixahead.value * shm->speed;
	samps = snd_Samples/2;//shm->samples >> (shm->channels-1);
	if (endtime - soundtime > samps)
		endtime = soundtime + samps;
	//iprintf("%d %d\n", diff, endtime - paintedtime);

	//printf("mixing %d %d %d\n", soundtime, paintedtime, endtime);
	MIX_PaintChannels(endtime);
	//DC_FlushRange(c_snd_Buffer, SND_SAMPLES * 2);
	GSPGPU_FlushDataCache(NULL, c_snd_Buffer_left, SND_SAMPLES);
	GSPGPU_FlushDataCache(NULL, c_snd_Buffer_right, SND_SAMPLES);
}

extern int snd_SfxVolume;
//
// Changes volume and stereo-separation variables
//  from the norm of a sound effect to be played.
// If the sound is not audible, returns a 0.
// Otherwise, modifies parameters and returns 1.
//

int S_AdjustSoundParams(mobj_t *listener, mobj_t *source,
	int *vol, int *sep, int *dist)
{
	extern int snd_MaxVolume;
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

void MIX_UpdateSounds(mobj_t *listener)
{
	int i, dist, vol;
	int angle;
	int sep;
	int priority;
	int absx;
	int absy;

	//listener = players[consoleplayer].mo;
	if (snd_SfxVolume == 0)
	{
		return;
	}

	if (listener) {
		for (i = 0; i < snd_Channels; i++)
		{
			if (channel[i].sfxinfo == 0 ||
				channel[i].origin == 0 ||
				channel[i].origin == listener)
			{
				continue;
			}
			else if (!S_AdjustSoundParams(listener, channel[i].origin, &vol, &sep, &dist)) {
				S_StopSound(channel[i].origin);
				continue;
			}
			priority = channel[i].sfxinfo->priority;
			priority *= (10 - (dist >> 8));
			//channel[i].priority = priority;
			channel[i].left = ((255 - sep) * vol) / 15;
			channel[i].right = ((sep)* vol) / 15;
			//printf("AGAIN %d %d - %d %d\n", sep, vol, channel[i].left, channel[i].right);
		}
	}
	MIX_Update_();
}

void S_StopChannel(int cnum)
{
	int i;
	channel_t *c = &channel[cnum];

	//jff 1/22/98 return if sound is not enabled
	if (!snd_card || nosfxparm)
		return;

	if (c->sfxinfo)
	{
		// stop the sound playing
		//if (I_SoundIsPlaying(c->handle))
		//	I_StopSound(c->handle);

		W_UnlockLumpNum(c->sfxinfo->lumpnum);
		// check to see
		//  if other channels are playing the sound
		//does not do anything????
		//for (i = 0; i < numChannels; i++) {
		//	if (cnum != i && c->sfxinfo == channel[i].sfxinfo) {
		//		break;
		//	}
		//}

		// degrade usefulness of sound data
		c->sfxinfo->usefulness--;
		c->sfxinfo = 0;
	}
}

void S_StopSound(void* origin) {
	int cnum;

	//jff 1/22/98 return if sound is not enabled
	if (!snd_card || nosfxparm)
		return;

	for (cnum = 0; cnum < snd_Channels; cnum++) {
		if (channel[cnum].sfxinfo && channel[cnum].origin == origin) {
			S_StopChannel(cnum);
			break;
		}
	}
}

//
// S_getChannel :
//   If none available, return -1.  Otherwise channel #.
//
// killough 4/25/98: made static, added is_pickup argument

static int I_getChannel(void *origin, sfxinfo_t *sfxinfo, int is_pickup)
{
	// channel number to use
	int cnum;
	channel_t *c;

	//jff 1/22/98 return if sound is not enabled
	if (!snd_card || nosfxparm)
		return -1;

	// Find an open channel
	for (cnum = 0; cnum < snd_Channels && channel[cnum].sfxinfo; cnum++) {
		if (origin && channel[cnum].origin == origin &&
			channel[cnum].is_pickup == is_pickup) {
			S_StopChannel(cnum);
			break;
		}
	}

	//printf("  channel %d\n", cnum);
	// None available
	if (cnum == snd_Channels) {
		// Look for lower priority
		for (cnum = 0; cnum < snd_Channels; cnum++) {
			if (channel[cnum].sfxinfo->priority >= sfxinfo->priority) {
				break;
			}
		}
		if (cnum == snd_Channels) {
			return -1;                  // No lower priority.  Sorry, Charlie.
		}
		else {
			S_StopChannel(cnum);        // Otherwise, kick out lower priority.
		}
	}

	c = &channel[cnum];              // channel is decided to be cnum.
	c->sfxinfo = sfxinfo;
	c->origin = origin;
	c->is_pickup = is_pickup;         // killough 4/25/98
	return cnum;
}

//
// Retrieve the raw data lump index
//  for a given SFX name.
//
int S_GetSfxLumpNum(sfxinfo_t* sfx)
{
	char namebuf[9];
	sprintf(namebuf, "ds%s", sfx->name);
	return W_GetNumForName(namebuf);
}

//
// Starting a sound means adding it
//  to the current list of active sounds
//  in the internal channels.
// As the SFX info struct contains
//  e.g. a pointer to the raw data,
//  it is ignored.
// As our sound handling does not handle
//  priority, it is ignored.
// Pitching (that is, increased speed of playback)
//  is set, but currently not used by mixing.
//
int I_StartSound(sfxinfo_t *sfx, int cnum, int vol, int sep, int pitch, int priority)
{
	byte *data;
	int lump;
	int cached;
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
	cached = W_LumpIsCached(lump);

	// We will handle the new SFX.
	// Set pointer to raw data.
	len = W_LumpLength(lump);

	// e6y: Crash with zero-length sounds.
	// Example wad: dakills (http://www.doomworld.com/idgames/index.php?id=2803)
	// The entries DSBSPWLK, DSBSPACT, DSSWTCHN and DSSWTCHX are all zero-length sounds
	if (len <= 8) return -1;

	/* Find padded length */
	len -= 8;

	data = W_LockLumpNum(lump);
	sfx_len = (data[7] << 24) | (data[6] << 16) | (data[5] << 8) | data[4];
	if (data[0] != 0x03 || data[1] != 0x00 || sfx_len > len || sfx_len <= 48) {
		return;
	}
	sfx_len -= 32;
	data += 8;
	sfx->data = data;
	ch = &channel[cnum];
	ch->pitch = pitch;
	ch->left = ((255 - sep) * vol) / 15;
	ch->right = ((sep)* vol) / 15;
	ch->end = paintedtime + len;
	ch->pos = 0;
	//printf("%8s %d %d - %d %d\n",sfx->name, sep, vol, ch->left, ch->right);
	
	if (0 && !cached) {
		// convert unsigned sample to signed
		int samplelen = len;
		u8 *ptr = data;
		while (samplelen--) {
			ptr[samplelen] ^= 0x80;
		}
	}

	return channel;
}


void S_StartSoundAtVolume(void *origin_p, int sfx_id, int volume)
{
	int sep, pitch, priority, cnum, is_pickup;
	sfxinfo_t *sfx;
	mobj_t *origin = (mobj_t *)origin_p;

	//jff 1/22/98 return if sound is not enabled
	if (!snd_card || nosfxparm)
		return;

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
		//volume *= 8;
	}
	else
		if (!S_AdjustSoundParams(players[displayplayer].mo, origin, &volume, &sep, &pitch))
			return;
		else
			if (origin->x == players[displayplayer].mo->x &&
				origin->y == players[displayplayer].mo->y)
				sep = NORM_SEP;

	// hacks to vary the sfx pitches
	if (sfx_id >= sfx_sawup && sfx_id <= sfx_sawhit)
		pitch += 8 - (M_Random() & 15);
	else
		if (sfx_id != sfx_itemup && sfx_id != sfx_tink)
			pitch += 16 - (M_Random() & 31);

	if (pitch<0)
		pitch = 0;

	if (pitch>255)
		pitch = 255;

	// kill old sound
	for (cnum = 0; cnum < snd_Channels; cnum++) {
		if (channel[cnum].sfxinfo && channel[cnum].origin == origin &&
			(comp[comp_sound] || channel[cnum].is_pickup == is_pickup))
		{
			S_StopChannel(cnum);
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
	if (sfx->lumpnum < 0 || (sfx->lumpnum = S_GetSfxLumpNum(sfx)) < 0)
		return;
	//printf(" lump %d\n", sfx->lumpnum);

	// increase the usefulness
	if (sfx->usefulness++ < 0)
		sfx->usefulness = 1;


	I_StartSound(sfx, cnum, volume, sep, pitch, priority);
}
#endif

void S_StartSound(void *origin, int sound_id) {
	S_StartSoundAtVolume(origin, sound_id, snd_SfxVolume);
}

void S_Stop(void)
{
	int cnum;


	//jff 1/22/98 skip sound init if sound not enabled
	if (snd_card && !nosfxparm) {
		for (cnum = 0; cnum < snd_Channels; cnum++) {
			if (channel[cnum].sfxinfo) {
				S_StopChannel(cnum);
			}
		}
	}
	//stop mixing so we can clean the buffer loop
	//mix_stop();

	//we will start the sound loop again but it is blank
	//so it should not make any noise while the level loads
	mix_start();
}

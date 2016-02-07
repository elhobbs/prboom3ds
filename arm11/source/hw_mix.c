#if 1
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
	u64 end;
	int pos;
	int left, right;
	float mix[12];
	ndspWaveBuf wavebuf;
} channel_t;

static channel_t channel[MAX_CHANNELS];

int			snd_Channels = MAX_CHANNELS;

int			snd_Speed = 11025;

#define	PAINTBUFFER_SIZE	512
typedef struct
{
	int left;
	int right;
} portable_samplepair_t;
portable_samplepair_t paintbuffer[PAINTBUFFER_SIZE];

static int snd_scaletable[32][256];
int audio_initialized = 0;

void MIX_InitScaletable(void)
{
	int		i, j;

	for (i = 0; i<32; i++)
		for (j = 0; j<256; j++)
			snd_scaletable[i][j] = ((signed char)j) * i * 8;
}

static u64 sound_pos;
static u64 sound_start;
#define TICKS_PER_SEC_LL 268111856LL

u64 soundpos() {
	u64 delta = (svcGetSystemTick() - sound_start);
	u64 samples = delta * snd_Speed / TICKS_PER_SEC_LL;

	//printf("%2d %8d %10lld %10lld\n", m_channel, m_speed, speed, delta);

	return samples;
}

void MIX_init() {
	int i;

	MIX_InitScaletable();

	if (ndspInit()) {
		audio_initialized = 0;
		nosfxparm = 1;
		printf("MIX_init failed - no sfx\n");
		return;
	}
	sound_start = svcGetSystemTick();
	sound_pos = soundpos();
	for (i = 0; i < snd_Channels; i++) {
		ndspChnSetInterp(i, NDSP_INTERP_NONE);
		ndspChnSetRate(i, 11025.0f);
		ndspChnSetFormat(i,NDSP_FORMAT_MONO_PCM8);
		memset(&channel[i].wavebuf, 0, sizeof(ndspWaveBuf));
		memset(&channel[i].mix, 0, sizeof(channel[i].mix));
	}
	audio_initialized = 1;
}

void MIX_exit() {
	ndspExit();
}

void I_StopSound(channel_t *c) {
	if (c == 0 || c->sfxinfo == 0) {
		return;
	}

	//printf("stop : %2d %8s %d\n", c-channel, c->sfxinfo->name, (int)(c->wavebuf.status));
	int i = 0;
	while (ndspChnIsPlaying(c-channel)) {
		if (!i) {
			ndspChnWaveBufClear(c-channel);
		}
		i++;
		svcSleepThread(500000);
		//printf("-----: %2d %8s %d %08x %d\n", c-channel, c->sfxinfo->name, (int)(c->wavebuf.status), c->wavebuf.data_vaddr, i);
	}

	if (c->wavebuf.data_vaddr) {
		linearFree(c->wavebuf.data_vaddr);
	}
	memset(&c->wavebuf, 0, sizeof(c->wavebuf));

	if (c->sfxinfo->usefulness > 0)
	{
		c->sfxinfo->usefulness--;
	}
	W_UnlockLumpNum(c->sfxinfo->lumpnum);
	c->origin = 0;
	c->sfxinfo = 0;
	//printf("done\n");
}

void MIX_Update_(void)
{
	channel_t *ch;
	int 	i;
	u64 	end;

	if (!audio_initialized) {
		return;
	}
	end = soundpos();
	//printf("mx: %10lld\n", end);

	ch = channel;
	for (i = 0; i<snd_Channels; i++, ch++)
	{
		if (!ch->sfxinfo) {
			continue;
		}
		if (end >= ch->end)
		{
			//printf("sound ended %lld %lld\n", end, ch->end);
			I_StopSound(ch);
		}
	}
	svcSleepThread(500000);
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

	if (!audio_initialized) {
		return;
	}
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
				//this is a hack to force stop channels
				//there may be a memory leak here
				if (ndspChnIsPlaying(i) && channel[i].wavebuf.data_vaddr == 0) {
					//printf("error: %d %08x\n", i, channel[i].wavebuf.data_vaddr);
					ndspChnWaveBufClear(i);
					svcSleepThread(500000);
				}
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
			channel[i].mix[0] = (float)channel[i].left / 128.0f;
			channel[i].mix[1] = (float)channel[i].right / 128.0f;
			ndspChnSetMix(i, channel[i].mix);
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

	I_StopSound(c);

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
	byte *data,*ldata;
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
	ch->left = ((256 - sep) * vol) / 15;
	ch->right = ((sep)* vol) / 15;
	ch->pos = 0;
	//printf("start: %2d %8s %d %d\n",cnum, sfx->name,ch->left, ch->right);

	ldata = (byte *)linearAlloc(len);
	
	if (1) {
		// convert unsigned sample to signed
		int samplelen = len;
		u8 *ptr = data;
		u8 *dst = ldata;
		while (samplelen--) {
			ldata[samplelen] = ptr[samplelen] ^ 0x80;
		}
	}
	DSP_FlushDataCache(ldata, len);
	ch->end = soundpos() + len;
	ch->wavebuf.data_vaddr = ldata;
	ch->wavebuf.nsamples = len;
	ch->wavebuf.looping = false;
	ch->wavebuf.status = NDSP_WBUF_FREE;
	ch->mix[0] = (float)ch->left / 128.0f;
	ch->mix[1] = (float)ch->right / 128.0f;
	ndspChnSetMix(cnum, ch->mix);
	ndspChnWaveBufAdd(cnum, &ch->wavebuf);
	svcSleepThread(500000);
	return channel;
}


void S_StartSoundAtVolume(void *origin_p, int sfx_id, int volume)
{
	int sep, pitch, priority, cnum, is_pickup;
	sfxinfo_t *sfx;
	mobj_t *origin = (mobj_t *)origin_p;

	if (!audio_initialized) {
		return;
	}
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

void S_StartSound(void *origin, int sound_id) {
	S_StartSoundAtVolume(origin, sound_id, snd_SfxVolume);
}

void S_Stop(void)
{
	int cnum;

	if (!audio_initialized) {
		return;
	}

	if (snd_card && !nosfxparm) {
		for (cnum = 0; cnum < snd_Channels; cnum++) {
			if (channel[cnum].sfxinfo) {
				S_StopChannel(cnum);
			}
		}
	}
}
#endif
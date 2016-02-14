#if 1
#include "doomstat.h"
#include "sounds.h"
#include "s_sound.h"
#include "m_random.h"
#include "r_main.h"
#include "lprintf.h"
#include "w_wad.h"
#include <3ds.h>
#include <3ds/services/csnd.h>

extern int snd_card;
extern boolean nosfxparm;

#define S_CLOSE_DIST (160 * FRACUNIT)
#define S_CLIPPING_DIST (1200 * FRACUNIT)
#define S_STEREO_SWING (96 * FRACUNIT)
#define S_ATTENUATOR ((S_CLIPPING_DIST - S_CLOSE_DIST) >> FRACBITS)

#define MAX_CHANNELS	23

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
	u64 end;
	int pos;
	int left, right;
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
extern int audio_initialized;

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

	if (!audio_initialized) {
		return;
	}

	MIX_InitScaletable();

	sound_start = svcGetSystemTick();
	sound_pos = soundpos();
}

void MIX_exit() {
}

void I_StopSound(channel_t *c) {
	if (c == 0 || c->sfxinfo == 0) {
		return;
	}

	u8 playing = 0;
	csndIsPlaying(c->ch_num, &playing);
	//printf("stop 1: %2d %d %8s %d %lld %lld\n", c - channel, c->ch_num, c->sfxinfo->name, playing == 0 ? 0 : 1, soundpos(),c->end);
	if (playing != 0) {
		CSND_SetPlayState(c->ch_num, 0);
		//csndIsPlaying(c->ch_num, &playing);
		//printf("stop 2: %2d %d %8s %d %lld %lld\n", c - channel, c->ch_num, c->sfxinfo->name, playing == 0 ? 0 : 1, soundpos(), c->end);
	}
	//while (playing != 0) {
	//	csndIsPlaying(c->ch_num, &playing);
	//	printf("stop 3: %2d %d %8s %d %lld %lld\n", c - channel, c->ch_num, c->sfxinfo->name, playing == 0 ? 0 : 1, soundpos(), c->end);
	//}


	if (c->ch_data) {
		linearFree(c->ch_data);
		c->ch_data = 0;
	}

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

	if (audio_initialized == 0) {
		return;
	}
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
#if 0
				//this is a hack to force stop channels
//there may be a memory leak here
				u8 playing = 0;
				csndIsPlaying(channel[i].ch_num, &playing);
				if (playing != 0 && channel[i].ch_data != 0) {
					CSND_SetPlayState(channel[i].ch_num, 0);
					printf("force stop %d\n", channel[i].ch_num);
				}

#endif // 0
				continue;
			}
			else if (!S_AdjustSoundParams(listener, channel[i].origin, &vol, &sep, &dist)) {
				//printf("S_AdjustSoundParams == 0: %08x\n", channel[i].origin);
				S_StopChannel(i);
				continue;
			}
			priority = channel[i].sfxinfo->priority;
			priority *= (10 - (dist >> 8));
			//channel[i].priority = priority;
			channel[i].left = ((255 - sep) * vol) / 15;
			channel[i].right = ((sep)* vol) / 15;
			CSND_SetVol(channel[i].ch_num, CSND_VOL((float)vol / 15.0f, ((float)sep - 128.0f) / 128.0f), 0);
			CSND_UpdateInfo(0);
			//printf("AGAIN %d %d - %d %d\n", sep, vol, channel[i].left, channel[i].right);
		}
	}
	MIX_Update_();
}

void S_StopChannel(int cnum)
{
	int i;
	channel_t *c = &channel[cnum];

	if (audio_initialized == 0) {
		return;
	}
	//jff 1/22/98 return if sound is not enabled
	if (!snd_card || nosfxparm)
		return;

	I_StopSound(c);

}

void S_StopSound(void* origin) {
	int cnum;

	if (audio_initialized == 0) {
		return;
	}
	//jff 1/22/98 return if sound is not enabled
	if (!snd_card || nosfxparm)
		return;

	for (cnum = 0; cnum < snd_Channels; cnum++) {
		if (channel[cnum].sfxinfo && channel[cnum].origin == origin) {
			//printf("S_StopSound: %d %08x\n", channel[cnum].ch_num, origin);
			//S_StopChannel(cnum);
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
	CSND_ChnInfo* info;

	//jff 1/22/98 return if sound is not enabled
	if (!snd_card || nosfxparm)
		return -1;

	// stop pickup on same channel
	for (cnum = 0; cnum < snd_Channels && channel[cnum].sfxinfo; cnum++) {
		if (origin && channel[cnum].origin == origin &&
			channel[cnum].is_pickup == is_pickup) {
			//printf("I_getChannel stop: %d\n", cnum);
			S_StopChannel(cnum);
			break;
		}
	}

	//find an open channel
	CSND_UpdateInfo(true);
	for (cnum = 0; cnum < snd_Channels; cnum++) {
		info = csndGetChnInfo(cnum + 8);
		if (info->active == 0) {
			//printf("play new on %d\n", cnum);
			break;
		}
	}

	//printf("  channel %d\n", cnum);
	// None available
	if (cnum == snd_Channels) {
		// Look for lower priority
		for (cnum = 0; cnum < snd_Channels; cnum++) {
			if (channel[cnum].sfxinfo->priority >= sfxinfo->priority) {
				//printf("I_getChannel priority: %d %d\n", cnum, channel[cnum].sfxinfo->priority,sfxinfo->priority);
				break;
			}
		}
		if (cnum == snd_Channels) {
			return -1;                  // No lower priority.  Sorry, Charlie.
		}
		else {
			//printf("I_getChannel kick: %d\n", cnum);
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
	byte *data, *ldata;
	int lump;
	int cached;
	int sfx_len;
	channel_t *ch;
	size_t len;
	u8 playing = 0;

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
	GSPGPU_FlushDataCache(ldata, len);
	ch->end = soundpos() + len;
	ch->ch_num = cnum + 8;
	ch->ch_data = ldata;

	//csndIsPlaying(ch->ch_num, &playing);
	//printf("test: %2d %d\n", ch->ch_num, (int)playing);
	csndPlaySound(ch->ch_num, SOUND_ONE_SHOT|SOUND_FORMAT_8BIT, 11025, (float)vol/15.0f, ((float)sep - 128.0f)/128.0f, ldata, 0, len);
	//try to start stalled channels
	//csndIsPlaying(ch->ch_num, &playing);
	//printf("start: %2d %8s %f %f\n", ch->ch_num, sfx->name, (float)vol / 15.0f, ((float)sep - 128.0f) / 128.0f);
	//if (playing == 0) {
	//	printf("csndPlaySound force %d\n", ch->ch_num);
	//	CSND_SetPlayState(ch->ch_num, 1);
	//	//flush csnd command buffers
	//	csndExecCmds(true);
	//}


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

	if (origin == 0 || origin == players[displayplayer].mo) {
		sep = NORM_SEP;
		//volume *= 8;
	}
	else {
		if (!S_AdjustSoundParams(players[displayplayer].mo, origin, &volume, &sep, &pitch)) {
			return;
		}
		else {
			if (origin->x == players[displayplayer].mo->x &&
				origin->y == players[displayplayer].mo->y) {
				sep = NORM_SEP;
			}
		}
	}

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
			//printf("kill old sound %d\n", cnum);
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
	if (audio_initialized == 0) {
		return;
	}
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
				//printf("S_Stop: %d\n", cnum);
				S_StopChannel(cnum);
			}
		}
	}
}
#endif
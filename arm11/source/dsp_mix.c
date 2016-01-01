#if 0
#include "ds_mix.h"
#include "doomstat.h"
#include "sounds.h"
#include "s_sound.h"
#include "m_random.h"
#include "r_main.h"
#include "lprintf.h"
#include "w_wad.h"
#include <3ds.h>

void* ndspMix_init(int channel, int speed, int channels);
void ndspMix_update32(void *pmix, int *pAudioData, int count);
void ndspMix_update16(void *pmix, short *pAudioData, int count);
int ndspMix_pos(void *pmix);
void ndspMix_exit(void *pmix);
void ndspMix_clear(void *pmix);
void ndspMix_flush(void *pmix);

void *_ndspMixer = 0;

u64 g_sound_time;
u64 g_paint_time;


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


static u64 sound_start;
#define TICKS_PER_SEC 268123480.0

void MIX_InitScaletable(void)
{
	int		i, j;

	for (i = 0; i<32; i++)
		for (j = 0; j<256; j++)
			snd_scaletable[i][j] = ((signed char)j) * i * 8;
}

void MIX_init() {
	u8 playing = 0;

	MIX_InitScaletable();

	_ndspMixer = ndspMix_init(1, 11025, 2);
	g_sound_time = g_paint_time = ndspMix_pos(_ndspMixer);
}

void MIX_exit() {
	ndspMix_exit(_ndspMixer);
	_ndspMixer = 0;
}

void MIX_TransferPaintBuffer(u64 endtime)
{
	int count = endtime - g_paint_time;

	ndspMix_update32(_ndspMixer, (int *)paintbuffer, count);
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

void MIX_PaintChannels(u64 endtime)
{
	int 	i;
	u64 	end, ltime;
	channel_t *ch;
	//channel_t	*sc;
	int		count, mixed = 0;

	while (g_paint_time < endtime)
	{
		// if paintbuffer is smaller than DMA buffer
		end = endtime;
		if (endtime - g_paint_time > PAINTBUFFER_SIZE)
			end = g_paint_time + PAINTBUFFER_SIZE;

		// clear the paint buffer
		memset(paintbuffer, 0, (end - g_paint_time) * sizeof(portable_samplepair_t));

		// paint in the channels.
		ch = channel;
		for (i = 0; i<snd_Channels; i++, ch++)
		{
			if (!ch->sfxinfo) {
				continue;
			}
			if (ch->left <= 0 && ch->right <= 0) {
				if (g_paint_time >= ch->end)
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

			ltime = g_paint_time;
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
		g_paint_time = end;
	}
}

#define TICKS_PER_SEC_LL 268111856LL

u64 MIX_SamplePos() {
	u64 samples = ndspMix_pos(_ndspMixer);

	//printf("%2d %8d %10lld %10lld\n", m_channel, m_speed, speed, delta);

	return samples;
}

void MIX_UpdateTime(void)
{
	g_sound_time = MIX_SamplePos();
}

void MIX_Update_(void)
{
	u64		endtime;
	static u64 last = 0;

	if (!audio_initialized) {
		return;
	}


	// Updates DMA time
	MIX_UpdateTime();

	// mix ahead of current position
	endtime = g_sound_time + snd_Speed * 0.1f;//_snd_mixahead.value * shm->speed;

	//printf("mx: %10lld %10lld %10lld\n", g_sound_time, g_paint_time, g_sound_time - last);
	last = g_sound_time;
	//give other threads a chance to run - prevents choppy sounds... maybe
	svcSleepThread(500000);
	MIX_PaintChannels(endtime);
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
	ch->end = g_paint_time + len;
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
	ndspMix_clear(_ndspMixer);
	g_sound_time = g_paint_time = ndspMix_pos(_ndspMixer);
}
#endif

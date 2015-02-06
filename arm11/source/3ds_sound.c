#include "sounds.h"
#include "d_main.h"
#include "doomstat.h"

int snd_card = 1;
int mus_card = 1;
int idmusnum;

int default_numChannels;

int snd_MaxVolume = 120;
int snd_SfxVolume = 15;
int snd_MusicVolume = 15;

int snd_samplerate = 11025;

// music currently being played
static musicinfo_t *mus_playing;

const char* S_music_files[NUMMUSIC]; // cournia - stores music file names

//============================================================

void S_PauseSound(void) {
}

void S_ResumeSound(void) {
}

void S_SetSfxVolume(int volume) {
	snd_MaxVolume = volume*8;
}


//============================================================
void S_StartMusic(int music_id) {
	//jff 1/22/98 return if music is not enabled
	if (!mus_card || nomusicparm)
		return;
	S_ChangeMusic(music_id, false);
}

void S_StopMusic(void)
{
	//jff 1/22/98 return if music is not enabled
	if (!mus_card || nomusicparm)
		return;

	if (mus_playing)
	{
		//if (mus_paused)
		//	I_ResumeSong(mus_playing->handle);

		mus_stop_music();
		if (mus_playing->lumpnum >= 0)
			W_UnlockLumpNum(mus_playing->lumpnum); // cph - release the music data

		mus_playing->data = 0;
		mus_playing = 0;
	}
}


void S_ChangeMusic(int music_id, int looping) {
	musicinfo_t *music;
	int music_file_failed; // cournia - if true load the default MIDI music
	char* music_filename;  // cournia

	//jff 1/22/98 return if music is not enabled
	if (!mus_card || nomusicparm)
		return;

	if (music_id <= mus_None || music_id >= NUMMUSIC)
		I_Error("S_ChangeMusic: Bad music number %d", music_id);

	music = &S_music[music_id];

	if (mus_playing == music)
		return;

	// shutdown old music
	S_StopMusic();

	// get lumpnum if neccessary
	if (!music->lumpnum)
	{
		char namebuf[9];
		sprintf(namebuf, "d_%s", music->name);
		music->lumpnum = W_GetNumForName(namebuf);
	}
	printf("mus: d_%s\n", music->name);
	music->data = W_CacheLumpNum(music->lumpnum);
	mus_play_music(music->data);

	mus_playing = music;
}

void S_SetMusicVolume(int volume) {
	if (!mus_card || nomusicparm)
		return;
	if (volume < 0 || volume > 15)
		I_Error("S_SetMusicVolume: Attempt to set music volume at %d", volume);
	snd_MusicVolume = volume;
	mus_update_volume();
}

void S_Start(void) {
	int mnum;

	if (!mus_card || nomusicparm)
		return;

	// kill all playing sounds at start of level
	//  (trust me - a good idea)

	S_Stop();

	//jff 1/22/98 return if music is not enabled
	if (!mus_card || nomusicparm)
		return;

	// start new music for the level
	//mus_paused = 0;

	if (idmusnum != -1)
		mnum = idmusnum; //jff 3/17/98 reload IDMUS music if not -1
	else
		if (gamemode == commercial)
			mnum = mus_runnin + gamemap - 1;
		else
		{
			static const int spmus[] =     // Song - Who? - Where?
			{
				mus_e3m4,     // American     e4m1
				mus_e3m2,     // Romero       e4m2
				mus_e3m3,     // Shawn        e4m3
				mus_e1m5,     // American     e4m4
				mus_e2m7,     // Tim  e4m5
				mus_e2m4,     // Romero       e4m6
				mus_e2m6,     // J.Anderson   e4m7 CHIRON.WAD
				mus_e2m5,     // Shawn        e4m8
				mus_e1m9      // Tim          e4m9
			};

			if (gameepisode < 4)
				mnum = mus_e1m1 + (gameepisode - 1) * 9 + gamemap - 1;
			else
				mnum = spmus[gamemap - 1];
		}
	S_ChangeMusic(mnum, true);
}


//============================================================

void MIX_UpdateSounds(mobj_t *listener);
void MIX_init();

void S_UpdateSounds(void* listener_p) {
	mobj_t *listener = (mobj_t*)listener_p;
	if (!snd_card || nosfxparm)
		return;
	MIX_UpdateSounds(listener);
}
void mus_init();
extern int audio_initialized;
void S_Init(int sfxVolume, int musicVolume) {
	nosfxparm = 0;
	nomusicparm = 0;
	//return;

	if (csndInit() == 0) {
		audio_initialized = 1;
	}
	MIX_init();
	mus_init();
}

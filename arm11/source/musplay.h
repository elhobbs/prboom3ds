#pragma once

#include <stdint.h>

typedef unsigned char  BYTE;
typedef unsigned short WORD;
typedef unsigned int   DWORD;

/* machine dependent types */
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int  uint;
typedef unsigned long ulong;

typedef signed char schar;
typedef signed short sshort;
typedef signed int  sint;
typedef signed long slong;


#define CHANNELS	16		// total channels 0..CHANNELS-1
#define PERCUSSION	15		// percussion channel

/* MUS file header structure */
typedef struct {
	char	ID[4];			// identifier "MUS" 0x1A
	WORD	scoreLen;		// score length
	WORD	scoreStart;		// score start
	WORD	channels;		// primary channels
	WORD	sec_channels;		// secondary channels (??)
	WORD    instrCnt;		// used instrument count
	WORD	dummy;
	//	WORD	instruments[...];	// table of used instruments
} MUSheader;

/* OPL2 instrument */
typedef struct {
	/*00*/	BYTE    trem_vibr_1;	/* OP 1: tremolo/vibrato/sustain/KSR/multi */
	/*01*/	BYTE	att_dec_1;	/* OP 1: attack rate/decay rate */
	/*02*/	BYTE	sust_rel_1;	/* OP 1: sustain level/release rate */
	/*03*/	BYTE	wave_1;		/* OP 1: waveform select */
	/*04*/	BYTE	scale_1;	/* OP 1: key scale level */
	/*05*/	BYTE	level_1;	/* OP 1: output level */
	/*06*/	BYTE	feedback;	/* feedback/AM-FM (both operators) */
	/*07*/	BYTE    trem_vibr_2;	/* OP 2: tremolo/vibrato/sustain/KSR/multi */
	/*08*/	BYTE	att_dec_2;	/* OP 2: attack rate/decay rate */
	/*09*/	BYTE	sust_rel_2;	/* OP 2: sustain level/release rate */
	/*0A*/	BYTE	wave_2;		/* OP 2: waveform select */
	/*0B*/	BYTE	scale_2;	/* OP 2: key scale level */
	/*0C*/	BYTE	level_2;	/* OP 2: output level */
	/*0D*/	BYTE	unused;
	/*0E*/	short	basenote;	/* base note offset */
} OPL2instrument;

/* OP2 instrument file entry */
typedef struct {
	/*00*/	WORD	flags;			// see FL_xxx below
	/*02*/	BYTE	finetune;		// finetune value for 2-voice sounds
	/*03*/	BYTE	note;			// note # for fixed instruments
	/*04*/	OPL2instrument instr[2];	// instruments
} OP2instrEntry;

#define FL_FIXED_PITCH	0x0001		// note has fixed pitch (see below)
#define FL_UNKNOWN	0x0002		// ??? (used in instrument #65 only)
#define FL_DOUBLE_VOICE	0x0004		// use two voices instead of one


#define OP2INSTRSIZE	sizeof(OP2instrEntry) // instrument size (36 bytes)
#define OP2INSTRCOUNT	(128 + 81-35+1)	// instrument count

#define OPL2CHANNELS	9
#define MAXCHANNELS		18

/* Internal variables */
typedef struct {
	uint	channelInstr[CHANNELS];		// instrument #
	uchar	channelVolume[CHANNELS];	// volume
	uchar	channelLastVolume[CHANNELS];	// last volume
	schar	channelPan[CHANNELS];		// pan, 0=normal
	schar	channelPitch[CHANNELS];		// pitch wheel, 0=normal
	uchar	channelSustain[CHANNELS];	// sustain pedal value
	uchar	channelModulation[CHANNELS];	// modulation pot value
} OPLdata;

typedef struct  {
	uint	state;			// music block state, see ST_xxx below
	uint	number;			// block id number
	//	uint	musicflags;		// see MF_xxx below

	uint	volume;
	uint	loopcount;
	uint	channelMask;
	uint	percussMask;

	ulong	time;
	ulong	ticks;
	uint	playingcount;
	uint	channelcount;

	//struct memoryBlock	score;

	//struct driverBlock	*driver;
	OPLdata				data;
} __musicBlock;

typedef volatile __musicBlock musicBlock;

#define ST_EMPTY	0		// music block is empty
#define ST_STOPPED	1		// music block is used but not playing
#define ST_PLAYING	2		// music block is used and playing
#define ST_PAUSED	3		// music block is used and paused
// any number >= 3 means `paused'


typedef struct {
	uchar	channel;		/* MUS channel number */
	uchar	musnumber;		/* MUS handle number */
	uchar	note;			/* note number */
	uchar	flags;			/* see CH_xxx below */
	uchar	realnote;		/* adjusted note number */
	schar	finetune;		/* frequency fine-tune */
	sint	pitch;			/* pitch-wheel value */
	uint	volume;			/* note volume */
	uint	realvolume;		/* adjusted note volume */
	OPL2instrument *instr;	/* current instrument */
	ulong	time;			/* note start time */
} channelEntry;

enum MUSctrl {
	ctrlPatch = 0,
	ctrlBank,
	ctrlModulation,
	ctrlVolume,
	ctrlPan,
	ctrlExpression,
	ctrlReverb,
	ctrlChorus,
	ctrlSustainPedal,
	ctrlSoftPedal,
	_ctrlCount_,
	ctrlSoundsOff = _ctrlCount_,
	ctrlNotesOff,
	ctrlMono,
	ctrlPoly,
	ctrlResetCtrls
};

#pragma pack(push,1)
typedef struct {
	char			ID[4];		// identifier "MUS" 0x1A
	unsigned short	scoreLen;
	unsigned short	scoreStart;
	unsigned short	channels;
	unsigned short	dummy1;
	unsigned short  instrCnt;
	unsigned short	dummy2;
	//	unsigned short	instruments[];
} mus_header_t;
#pragma pack(pop)

#ifndef byte
typedef unsigned char byte;
typedef unsigned char u8;
#endif

typedef enum {
	MUS_IDLE,
	MUS_PLAYING,
	MUS_EXIT
} MUS_STATE;

void mus_init();
void mus_exit();
void mus_play_music(u8 *data);
void mus_stop_music();
void mus_play_timer(void);

#include <3ds.h>
#include <stdio.h>
#include <sys/stat.h>
#include <sys/errno.h>
#include <sys/unistd.h>
#include <stdio.h>
#include "config.h"
#include "doomtype.h"
#include "doomstat.h"
#include "i_system.h"
#include "i_sound.h"
#include "lprintf.h"
#include "r_fps.h"
#include "m_argv.h"
#include <dirent.h>

#define timers2ms(tlow,thigh) ((tlow>>5)+(thigh<<11))

int stat_3ds(const char *fname, struct stat *st)
{
	FILE* file;
	DIR *dir;

	/* The best we can do is try to open the file readonly.  If it exists,
	then we can guess a few things about it.  */
	if ((file = fopen(fname, "rb")) == 0) {
		//maybe it is a directory?
		if ((dir = opendir(fname)) != 0) {
			memset(st, 0, sizeof(*st));
			st->st_mode = S_IFDIR | S_IREAD;
			st->st_blksize = 1024;
			closedir(dir);
		}
		return -1;
	}

	memset(st, 0, sizeof(*st));
	st->st_mode = S_IFREG | S_IREAD;
	st->st_blksize = 1024;
	fclose(file); /* Not interested in the error.  */
	return 0;
}

int access_3ds(const char *fn, int flags) {
	struct stat s;
	if (stat_3ds(fn, &s))
		return -1;
	if (s.st_mode & S_IFDIR)
		return 0;
	if (flags & W_OK)
	{
		if (s.st_mode & S_IWRITE)
			return 0;
		return -1;
	}
	return 0;
}

// Handy DSdev.org timer functions
u32 GetTicks(void)
{
	return osGetTime();// svcGetSystemTick();
	//return timers2ms((unsigned int)TIMER0_DATA, (unsigned int)TIMER1_DATA);
}

void Pause(u32 ms)
{
	u32 now;
	now = GetTicks();
	while (GetTicks()<now + ms);
}

static unsigned int start_displaytime;
static unsigned int displaytime;
static boolean InDisplay = false;

boolean I_StartDisplay(void)
{
	if (InDisplay)
		return false;

	start_displaytime = GetTicks();
	InDisplay = true;
	return true;
}

void I_EndDisplay(void)
{
	displaytime = GetTicks() - start_displaytime;
	InDisplay = false;
}

void I_Read(FILE *fd, void* vbuf, size_t sz)
{
	fread(vbuf, sz, 1, fd);
}

int I_Filelength(FILE *handle)
{
	struct stat   fileinfo;

	if (fstat(handle, &fileinfo) == -1)
		I_Error("I_Filelength: %s", strerror(errno));
	return fileinfo.st_size;
}

boolean HasTrailingSlash(const char* dn)
{
	return (dn[strlen(dn) - 1] == '/');
}

char* I_FindFile(const char* wfname, const char* ext)
{
	int   i;
	// Precalculate a length we will need in the loop
	size_t  pl = strlen(wfname) + strlen(ext) + 4;

	for (i = 0; i<8; i++) {
		char  * p;
		const char  * d = NULL;
		const char  * s = NULL;
		// Each entry in the switch sets d to the directory to look in,
		// and optionally s to a subdirectory of d
		switch (i) {
		case 1:
			if (!(d = getenv("DOOMWADDIR"))) continue;
		case 0:
			break;
		case 2:
			d = DOOMWADDIR;
			break;
		case 4:
			d = "/usr/share/games/doom";
			break;
		case 5:
			d = "/usr/local/share/games/doom";
			break;
		case 6:
			d = I_DoomExeDir();
			break;
		case 3:
			s = "doom";
		case 7:
			if (!(d = getenv("HOME"))) continue;
			break;
#ifdef SIMPLECHECKS
		default:
			I_Error("FindWADFile: Internal failure");
#endif
		}

		p = malloc((d ? strlen(d) : 0) + (s ? strlen(s) : 0) + pl);
		sprintf(p, "%s%s%s%s%s", d ? d : "", (d && !HasTrailingSlash(d)) ? "/" : "",
			s ? s : "", (s && !HasTrailingSlash(s)) ? "/" : "",
			wfname);

		if (access_3ds(p, F_OK))
			strcat(p, ext);
		if (!access_3ds(p, F_OK)) {
			lprintf(LO_INFO, " found %s\n", p);
			return p;
		}
		free(p);
	}
	return NULL;
}

void I_uSleep(unsigned long usecs)
{
	Pause(usecs/1000);
}


int realtic_clock_rate = 100;
static int_64_t I_GetTime_Scale = 1 << 24;

static int I_GetTime_Scaled(void)
{
	return (int)((int_64_t)I_GetTime_RealTime() * I_GetTime_Scale >> 24);
}

static int  I_GetTime_FastDemo(void)
{
	static int fasttic;
	return fasttic++;
}

unsigned long I_GetRandomTimeSeed(void)
{
	/* This isnt very random */
	return(GetTicks());
}

static int I_GetTime_Error(void)
{
	I_Error("I_GetTime_Error: GetTime() used before initialization");
	return 0;
}

int ms_to_next_tick;

int I_GetTime_RealTime(void)
{
	int t = GetTicks();
	int i = t*(TICRATE / 5) / 200;
	ms_to_next_tick = (i + 1) * 200 / (TICRATE / 5) - t;
	if (ms_to_next_tick > 1000 / TICRATE || ms_to_next_tick<1) ms_to_next_tick = 1;
	return i;
}

#ifndef PRBOOM_SERVER
fixed_t I_GetTimeFrac(void)
{
	unsigned long now;
	fixed_t frac;

	now = GetTicks();

	if (tic_vars.step == 0)
		return FRACUNIT;
	else
	{
		frac = (fixed_t)((now - tic_vars.start + displaytime) * FRACUNIT / tic_vars.step);
		if (frac < 0)
			frac = 0;
		if (frac > FRACUNIT)
			frac = FRACUNIT;
		return frac;
	}
}

void I_GetTime_SaveMS(void)
{
	if (!movement_smooth)
		return;

	tic_vars.start = GetTicks();
	tic_vars.next = (unsigned int)((tic_vars.start * tic_vars.msec + 1.0f) / tic_vars.msec);
	tic_vars.step = tic_vars.next - tic_vars.start;
}
#endif


int(*I_GetTime)(void) = I_GetTime_Error;

const char *I_DoomExeDir(void)
{
	static char *base;
#if 1
	static const char current_dir_dummy[] = { "sdmc:/" }; // proff - rem extra slash 8/21/03
	base = malloc(PATH_MAX);
	if (!getcwd(base, PATH_MAX))
		strcpy(base, current_dir_dummy);
	printf("base dir: %s\n",base);
#else
	static const char current_dir_dummy[] = { "." }; // proff - rem extra slash 8/21/03
	if (!base)        // cache multiple requests
	{
		size_t len = strlen(*myargv);
		char *p = (base = malloc(len + 1)) + len - 1;
		strcpy(base, *myargv);
		while (p > base && *p != '/' && *p != '\\')
			*p-- = 0;
		if (*p == '/' || *p == '\\')
			*p-- = 0;
		if (strlen(base)<2)
		{
			free(base);
			base = malloc(PATH_MAX);
			if (!getcwd(base, PATH_MAX))
				strcpy(base, current_dir_dummy);
		}
	}
#endif
	return base;
}

void I_InitSound(void) {
}

void I_Init(void)
{
	/* killough 4/14/98: Adjustable speedup based on realtic_clock_rate */
	if (fastdemo)
		I_GetTime = I_GetTime_FastDemo;
	else
		if (realtic_clock_rate != 100)
		{
		I_GetTime_Scale = ((int_64_t)realtic_clock_rate << 24) / 100;
		I_GetTime = I_GetTime_Scaled;
		}
		else
			I_GetTime = I_GetTime_RealTime;

	{
		/* killough 2/21/98: avoid sound initialization if no sound & no music */
		extern boolean nomusicparm, nosfxparm;
		if (!(nomusicparm && nosfxparm))
			I_InitSound();
	}
}

static int has_exited;

/* I_SafeExit
* This function is called instead of exit() by functions that might be called
* during the exit process (i.e. after exit() has already been called)
* Prevent infinitely recursive exits -- killough
*/

void I_SafeExit(int rc)
{
	while (1);
	if (!has_exited)    /* If it hasn't exited yet, exit now -- killough */
	{
		has_exited = rc ? 2 : 1;
		exit(rc);
	}
}


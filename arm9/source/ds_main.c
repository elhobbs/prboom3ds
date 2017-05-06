/*---------------------------------------------------------------------------------

	Simple console print demo
	-- dovoto

---------------------------------------------------------------------------------*/
#include <3ds.h>
#include <stdio.h>
#include <stdlib.h>
#include "lprintf.h"
#include "m_argv.h"
#include "z_zone.h"
#include "keyboard.h"

#if 0
#include "khax.h"
#endif

//u32 __stacksize__ = 1024 * 1024;

char *DS_USERNAME = "username";

void D_DoomMain(void);
void Z_Close(void);
void S_Exit();
void M_SaveDefaults(void);
void W_Exit();

void drawFrame()
{
#if 0
	static int cnt = 0;
	u8* bufAdr = gfxGetFramebuffer(GFX_TOP, GFX_LEFT, NULL, NULL);

	int i, j;
	for (i = 1; i<400; i++)
	{
		for (j = 1; j<240; j++)
		{
			u32 v = (j + i * 240) * 3;
			bufAdr[v] = ((i + cnt) + 4096) / 32;
			bufAdr[v + 1] = ((j - 256 + cnt) + 4096) / 64;
			bufAdr[v + 2] = ((i + 128 - cnt) + 4096) / 32;
		}
	}
	cnt++;
#endif
	//con_draw();

	gfxFlushBuffers();
	gfxSwapBuffers();
}

int audio_initialized = 0;
static u32 old_time_limit = UINT32_MAX;

static void sys_init() {
	gfxInitDefault();
	//con_init();
	consoleInit(GFX_BOTTOM, 0);
	printf("console init\n");
	//svcSleepThread(5000000000LL);

#if 0
	//only do this on ninjhax 1
	if (!hbInit()) {

		hbExit();
		Result result = khaxInit();
		printf("khaxInit returned %08lx\n", result);
		svcSleepThread(2000000000);
	}
#endif
	
	gfxSet3D(true);

	//srand(svcGetSystemTick());

	//consoleSetWindow(0, 0, 0, 40, 15);
	dkeyboard_init();
	printf("keyboard init\n");
	//svcSleepThread(5000000000LL);
	//SD_init();
	//sdmcInit();
	gfxFlushBuffers();
	gfxSwapBuffers();
	printf("sys init\n");
	//svcSleepThread(5000000000LL);

	//svcSleepThread(5000000000);

	osSetSpeedupEnable(true);
	//while (1);
	//stolen from FBI - thanks steveice10
	APT_GetAppCpuTimeLimit(&old_time_limit);
	Result cpuRes = APT_SetAppCpuTimeLimit(30);
	if (R_FAILED(cpuRes)) {
		printf("Failed to set syscore CPU time limit: %08lX", cpuRes);
	}
}

void I_Quit() {
	S_Exit();
	M_SaveDefaults();
	W_Exit();
	if (audio_initialized) {
		csndExit();
		printf("csndExit ok!\n");
	}
	if (old_time_limit != UINT32_MAX) {
		APT_SetAppCpuTimeLimit(old_time_limit);
	}

	gfxSet3D(false);
	osSetSpeedupEnable(false);
	//ndspExit();
#if 0
	khaxExit();
#endif
	gfxExit();
	//svcSleepThread(5000000000LL);
}

// Jefklak 19/11/06 - Switches lower DS screen back to console or vice versa.
int gen_screen_swap = 0;
int gen_console_enable = 1;

void keyboardStart() {
}

void keyboardEnd() {
}

//---------------------------------------------------------------------------------
int main(int argc, char *argv[]) {
	if (argv) {
		myargc = 1;
		myargv = argv;
	}
	else {
		myargc = argc;
		myargv = "\0\0\0\0";// argv;
	}

	//---------------------------------------------------------------------------------
	sys_init();
	printf("system initialized\n");
	printf("%d %p\n", argc, argv);
	//svcSleepThread(5000000000LL);
	//for (int i = 0; i < argc; i++) {
	//	printf("%d %s\n", i, argv[i]);
	//}
	

	/* Version info */
	lprintf(LO_INFO, "PrBoom 3DS\n");
	//PrintVer();

	/* cph - Z_Close must be done after I_Quit, so we register it first. */
	atexit(Z_Close);
	/*
	killough 1/98:

	This fixes some problems with exit handling
	during abnormal situations.

	The old code called I_Quit() to end program,
	while now I_Quit() is installed as an exit
	handler and exit() is called to exit, either
	normally or abnormally. Seg faults are caught
	and the error handler is used, to prevent
	being left in graphics mode or having very
	loud SFX noise because the sound card is
	left in an unstable state.
	*/
	Z_Init();                  /* 1/18/98 killough: start up memory stuff first */

	atexit(I_Quit);

	//I_PreInitGraphics();
	D_DoomMain();

	exit(0);

	return 0;
}

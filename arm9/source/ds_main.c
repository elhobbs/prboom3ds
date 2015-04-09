/*---------------------------------------------------------------------------------

	Simple console print demo
	-- dovoto

---------------------------------------------------------------------------------*/
#include <3ds.h>
#include <stdio.h>
#include "lprintf.h"
#include "m_argv.h"

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

static void sys_init() {
	Result ret;

	gfxInitDefault();

	gfxSet3D(true);

	srand(svcGetSystemTick());

	//con_init();
	consoleInit(GFX_BOTTOM, 0);
	//consoleSetWindow(0, 0, 0, 40, 15);
	keyboard_init();
	//SD_init();
	sdmcInit();
	switchConsole();
	gfxFlushBuffers();
	gfxSwapBuffers();
}

void I_Quit() {
	S_Exit();
	M_SaveDefaults();
	W_Exit();
	gfxExit();
	svcSleepThread(5000000000LL);
}

// Jefklak 19/11/06 - Switches lower DS screen back to console or vice versa.
int gen_screen_swap = 0;
int gen_console_enable = 1;

void keyboardStart() {
}

void keyboardEnd() {
}

void switchConsole()
{
	// ### LOWER SCREEN #### //
	if (gen_console_enable)
	{
	}
	else
	{
		//setAutoMap();
		/**
		* adjusted in st_lib.h (static int instead of #define)
		* hu_lib.h includes st_lib.h and uses same FG screen[x] identifier
		* if no console, draw stats to lower screen!
		* Also increase upper screen display size.
		**/
		//FG = 1;
		//if (gamestate == GS_LEVEL)
		//	players[consoleplayer].message = s_CONSOLESWAPOFF;
	}

	//if (gamestate == GS_LEVEL)
	//	M_SizeDisplay(FG);
}

//---------------------------------------------------------------------------------
int main(int argc, char *argv[]) {
	if (argv) {
		myargc = argc;
		myargv = argv;
	}
	else {
		myargc = 0;// argc;
		myargv = "\0\0\0\0";// argv;
	}

	//---------------------------------------------------------------------------------
	sys_init();
	printf("system initialized\n");
	printf("%d %s\n",argc,argv ? argv[0] : "{null}");


	/* Version info */
	lprintf(LO_INFO, "PrBoom DS\n");
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

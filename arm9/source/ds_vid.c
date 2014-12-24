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
#include "d_event.h"
#include "v_video.h"
#include "m_argv.h"
#include "r_draw.h"
#include "st_stuff.h"
#include "w_wad.h"

#ifdef DISABLE_DOUBLEBUFFER
int use_doublebuffer = 0;
#else
int use_doublebuffer = 1; // Included not to break m_misc, but not relevant to SDL
#endif
int use_fullscreen;
int desired_fullscreen;
// static SDL_Surface *screen;

unsigned char* out_buffer = NULL;

char weapons[9] = { '1', '2', '3', '4', '5', '6', '7', '8', '9' };
int weapon_index = 0;
bool weapon_shotgun_cycled = false;

void AM_ZoomOut();
void AM_ZoomIn();

touchPosition	g_lastTouch = { 0, 0, 0, 0 };
touchPosition	g_currentTouch = { 0, 0, 0, 0 };

void DS_Controls(void) {
	touchPosition touch;

	scanKeys();	// Do DS input housekeeping
	u16 keys = keysDown();
	u16 held = keysHeld();

	if (held & KEY_TOUCH) {
		touchRead(&touch);
	}

	/*if (held & KEY_B) {
		if (held & KEY_L) {
			AM_ZoomIn();
		}
		if (held & KEY_R) {
			AM_ZoomOut();
		}
	}*/

	if (keys & KEY_UP /* || ((held & KEY_TOUCH) && touch.py < 80)*/)
	{
		event_t event;
		event.type = ev_keydown;
		event.data1 = KEYD_UPARROW;
		D_PostEvent(&event);
	}

	if (keys & KEY_LEFT)
	{
		event_t event;
		event.type = ev_keydown;
		event.data1 = KEYD_LEFTARROW;
		D_PostEvent(&event);
	}

	if (keys & KEY_DOWN /* || ((held & KEY_TOUCH) && touch.py > 120)*/)
	{
		event_t event;
		event.type = ev_keydown;
		event.data1 = KEYD_DOWNARROW;
		D_PostEvent(&event);
	}

	if (keys & KEY_RIGHT)
	{
		event_t event;
		event.type = ev_keydown;
		event.data1 = KEYD_RIGHTARROW;
		D_PostEvent(&event);
	}

	if (keys & KEY_START)
	{
		event_t event;
		event.type = ev_keydown;
		event.data1 = KEYD_ESCAPE;
		D_PostEvent(&event);
	}

	if (keys & KEY_SELECT) {
		event_t event;
		event.type = ev_keydown;
		event.data1 = KEYD_ENTER;
		D_PostEvent(&event);
	}

	if (keys & KEY_A)
	{
		event_t event;
		event.type = ev_keydown;
		if (menuactive) event.data1 = KEYD_ENTER;
		else event.data1 = KEYD_RCTRL;
		D_PostEvent(&event);
	}

	if (keys & KEY_B)
	{
		event_t event;
		event.type = ev_keydown;
		if (menuactive) event.data1 = KEYD_ESCAPE;
		else event.data1 = ' ';
		D_PostEvent(&event);
	}

	if (keys & KEY_X)
	{
		event_t event;
		event.type = ev_keydown;
		event.data1 = KEYD_RSHIFT;
		D_PostEvent(&event);
	}

	if (keys & KEY_Y)
	{
		bool good = false;

		while (!good)
		{
			// Jefklak 23/11/06 - regular shotgun in DOOMII please
			if (gamemission == doom2 && weapon_index == 2)
			{
				if (!weapon_shotgun_cycled)
					weapon_shotgun_cycled = true;
				else
				{
					weapon_index++;
					weapon_shotgun_cycled = true;
				}
			}
			else
			{
				weapon_index++;
				weapon_shotgun_cycled = false;
			}

			if (weapon_index >= NUMWEAPONS) weapon_index = 0;
			if (players[displayplayer].weaponowned[weapon_index]) good = true;
		}

		event_t event;
		event.type = ev_keydown;
		event.data1 = weapons[weapon_index];
		D_PostEvent(&event);
		event.data1 = 'y';
		D_PostEvent(&event);
	}

	if (keys & KEY_R) {
		if (!(held & KEY_B)) {
			event_t event;
			event.type = ev_keydown;
			event.data1 = '.';
			D_PostEvent(&event);
		}
	}

	if (keys & KEY_L)
	{
		if (!(held & KEY_B)) {
			event_t event;
			event.type = ev_keydown;
			event.data1 = ',';
			D_PostEvent(&event);
		}
	}

	keys = keysUp();

	if (keys & KEY_UP /* || (keys & KEY_TOUCH) || ((held & KEY_TOUCH) && touch.py >= 80)*/)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = KEYD_UPARROW;
		D_PostEvent(&event);
	}

	if (keys & KEY_LEFT)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = KEYD_LEFTARROW;
		D_PostEvent(&event);
	}

	if (keys & KEY_DOWN /* || (keys & KEY_TOUCH) || ((held & KEY_TOUCH) && touch.py <= 120)*/)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = KEYD_DOWNARROW;
		D_PostEvent(&event);
	}

	if (keys & KEY_RIGHT)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = KEYD_RIGHTARROW;
		D_PostEvent(&event);
	}

	if (keys & KEY_START)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = KEYD_ESCAPE;
		D_PostEvent(&event);
	}

	if (keys & KEY_SELECT)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = KEYD_ENTER;
		D_PostEvent(&event);
	}

	if (keys & KEY_A)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = KEYD_RCTRL;
		D_PostEvent(&event);
	}

	if (keys & KEY_B)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = ' ';
		D_PostEvent(&event);
	}

	if (keys & KEY_X)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = KEYD_RSHIFT;
		D_PostEvent(&event);
	}

	if (keys & KEY_Y)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = weapons[weapon_index];
		D_PostEvent(&event);
		event.data1 = 'y';
		D_PostEvent(&event);
	}

	if (keys & KEY_R)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = '.';
		D_PostEvent(&event);
	}

	if (keys & KEY_L)
	{
		event_t event;
		event.type = ev_keyup;
		event.data1 = ',';
		D_PostEvent(&event);
	}

	if (keysDown() & KEY_TOUCH)
	{
		touchRead(&g_lastTouch);
		g_lastTouch.px <<= 7;
		g_lastTouch.py <<= 7;
	}

	if (keysHeld() & KEY_TOUCH) // this is only for x axis
	{
		int dx, dy;
		event_t event;

		touchRead(&g_currentTouch);// = touchReadXY();
		// let's use some fixed point magic to improve touch smoothing accuracy
		g_currentTouch.px <<= 7;
		g_currentTouch.py <<= 7;

		dx = (g_currentTouch.px - g_lastTouch.px) >> 6;
		dy = (g_currentTouch.py - g_lastTouch.py) >> 6;

		event.type = ev_mouse;
		//event.data1 = I_SDLtoDoomMouseState(Event->motion.state);
		event.data1 = 0;
		event.data2 = dx<<5;// ((touch.px - 128) / 3) << 5;
		//event.data3 = (-(touch.py - 96) / 8) << 5;
		event.data3 = 0;// dy << 4;// (0) << 5;
		D_PostEvent(&event);
		
		g_lastTouch.px = (g_lastTouch.px + g_currentTouch.px) / 2;
		g_lastTouch.py = (g_lastTouch.py + g_currentTouch.py) / 2;
	}

}

/**
* 23/11/06 - Powersave mode added (thanks to Mr. Snowflake)
* in DOOM II, regular shotgun added to weapon index pool
**/
extern int saveStringEnter;

void I_StartTic(void) {
	if (saveStringEnter) {
#ifdef ARM9
		int key = keyboardUpdate();
		scanKeys();
		u16 keys = keysDown();
		if (keys & KEY_A) key = 10;
		if (keys & KEY_B) key = KEYD_ESCAPE;
		event_t event;
		event.type = ev_keydown;
		event.data1 = key;
		D_PostEvent(&event);
#endif
	}
	else {
		DS_Controls();
	}
}

//
// I_StartFrame
//
void I_StartFrame(void)
{
}


void I_UpdateVideoMode(void)
{
	video_mode_t mode;
	int i;

	lprintf(LO_INFO, "I_UpdateVideoMode: %dx%d\n", SCREENWIDTH, SCREENHEIGHT);
	
	mode = I_GetModeFromString(default_videomode);
	if ((i = M_CheckParm("-vidmode")) && i<myargc - 1) {
		mode = I_GetModeFromString(myargv[i + 1]);
	}

	V_InitMode(mode);
	V_DestroyUnusedTrueColorPalettes();
	V_FreeScreens();

	I_SetRes();
	
	V_AllocScreens();

	R_InitBuffer(SCREENWIDTH, SCREENHEIGHT);
}

int I_ScreenShot(const char *fname) {
}

static int newpal = 0;
#define NO_PALETTE_CHANGE 1000

//
// I_SetPalette
//
void I_SetPalette(int pal)
{
	newpal = pal;
}

void I_CalculateRes(unsigned int width, unsigned int height)
{
	SCREENWIDTH = width;
	SCREENHEIGHT = height;
	SCREENPITCH = SCREENWIDTH;
}

// CPhipps -
// I_SetRes
// Sets the screen resolution
void I_SetRes(void)
{
	int i;

	I_CalculateRes(SCREENWIDTH, SCREENHEIGHT);

	// set first three to standard values
	for (i = 0; i<3; i++) {
		screens[i].width = SCREENWIDTH;
		screens[i].height = SCREENHEIGHT;
		screens[i].byte_pitch = SCREENPITCH;
		screens[i].short_pitch = SCREENPITCH / V_GetModePixelDepth(VID_MODE16);
		screens[i].int_pitch = SCREENPITCH / V_GetModePixelDepth(VID_MODE32);
	}

	// statusbar
	screens[4].width = SCREENWIDTH;
	screens[4].height = (ST_SCALED_HEIGHT + 1);
	screens[4].byte_pitch = SCREENPITCH;
	screens[4].short_pitch = SCREENPITCH / V_GetModePixelDepth(VID_MODE16);
	screens[4].int_pitch = SCREENPITCH / V_GetModePixelDepth(VID_MODE32);

	lprintf(LO_INFO, "I_SetRes: Using resolution %dx%d\n", SCREENWIDTH, SCREENHEIGHT);
}

int I_GetModeFromString(const char *modestr)
{
	video_mode_t mode;

	if (!stricmp(modestr, "15")) {
		mode = VID_MODE15;
	}
	else if (!stricmp(modestr, "15bit")) {
		mode = VID_MODE15;
	}
	else if (!stricmp(modestr, "16")) {
		mode = VID_MODE16;
	}
	else if (!stricmp(modestr, "16bit")) {
		mode = VID_MODE16;
	}
	else if (!stricmp(modestr, "32")) {
		mode = VID_MODE32;
	}
	else if (!stricmp(modestr, "32bit")) {
		mode = VID_MODE32;
	}
	else if (!stricmp(modestr, "gl")) {
		mode = VID_MODEGL;
	}
	else if (!stricmp(modestr, "OpenGL")) {
		mode = VID_MODEGL;
	}
	else {
		mode = VID_MODE8;
	}
	return mode;
}

//
// I_UpdateNoBlit
//
void I_UpdateNoBlit(void)
{
}

typedef struct
{
	u8 r;
	u8 g;
	u8 b;
	u8 unused;
} Color_t;

#ifdef DS3D
uint32 ds_texture_pal;
u16 ds_palette[256];
int ds_pal_init = 1;

uint32 nextPBlock = (uint32)0;


//---------------------------------------------------------------------------------
inline uint32 aalignVal(uint32 val, uint32 to) {
	return (val & (to - 1)) ? (val & ~(to - 1)) + to : val;
}

//---------------------------------------------------------------------------------
int ndsgetNextPaletteSlot(u16 count, uint8 format) {
	//---------------------------------------------------------------------------------
	// ensure the result aligns on a palette block for this format
	uint32 result = aalignVal(nextPBlock, 1 << (4 - (format == GL_RGB4)));

	// convert count to bytes and align to next (smallest format) palette block
	count = aalignVal(count << 1, 1 << 3);

	// ensure that end is within palette video mem
	if (result + count > 0x10000)   // VRAM_F - VRAM_E
		return -1;

	nextPBlock = result + count;
	return (int)result;
}

//---------------------------------------------------------------------------------
void ndsTexLoadPalVRAM(const u16* pal, u16 count, u32 addr) {
	//---------------------------------------------------------------------------------
	vramSetBankF(VRAM_F_LCD);
	//swiCopy( pal, &VRAM_F[addr>>1] , count / 2 | COPY_MODE_WORD);
	dmaCopyWords(3, (uint32*)pal, (uint32*)&VRAM_F[addr >> 1], count << 1);
	vramSetBankF(VRAM_F_TEX_PALETTE);
}

//---------------------------------------------------------------------------------
uint32 ndsTexLoadPal(const u16* pal, u16 count, uint8 format) {
	//---------------------------------------------------------------------------------
	uint32 addr = ndsgetNextPaletteSlot(count, format);
	if (addr >= 0)
		ndsTexLoadPalVRAM(pal, count, (u32)addr);

	return addr;
}
void glColorTable(uint8 format, uint32 addr) {
	GFX_PAL_FORMAT = addr >> (4 - (format == GL_RGB4));
}
#endif

byte pal3ds[256 * 3];

static void I_UploadNewPalette(int pal)
{
	static Color_t* colours;
	static int cachedgamma;
	static size_t num_pals;

	if (V_GetMode() == VID_MODEGL)
		return;

	if ((colours == 0) || (cachedgamma != usegamma)) {
		int pplump = W_GetNumForName("PLAYPAL");
		int gtlump = (W_CheckNumForName)("GAMMATBL",ns_prboom);
		register const byte * palette = W_CacheLumpNum(pplump);
		register const byte * const gtable = (const byte *)W_CacheLumpNum(gtlump) + 256*(cachedgamma = usegamma);
		register int i;

		num_pals = W_LumpLength(pplump) / (3 * 256);
		num_pals *= 256;

		if (!colours) {
			// First call - allocate and prepare colour array
			colours = malloc(sizeof(*colours)*num_pals);
		}

		// set the colormap entries
		for (i = 0; (size_t)i<num_pals; i++) {
			colours[i].r = gtable[palette[0]];
			colours[i].g = gtable[palette[1]];
			colours[i].b = gtable[palette[2]];
			palette += 3;
		}

		W_UnlockLumpNum(pplump);
		W_UnlockLumpNum(gtlump);
		num_pals /= 256;
	}

#ifdef RANGECHECK
	if ((size_t)pal >= num_pals)
		I_Error("I_UploadNewPalette: Palette number out of range (%d>=%d)",
		pal, num_pals);
#endif

	// store the colors to the current display
	//SDL_SetColors(SDL_GetVideoSurface(), colours+256*pal, 0, 256);
	u32 i;
	u16 c;

	for (i = 0; i < 256; i++)
	{
		u8 r, g, b;

		r = (u8)colours[i + 256 * pal].r;
		g = (u8)colours[i + 256 * pal].g;
		b = (u8)colours[i + 256 * pal].b;

		pal3ds[i * 3 + 0] = b;
		pal3ds[i * 3 + 1] = g;
		pal3ds[i * 3 + 2] = r;

#ifdef DS3D
		ds_palette[i] = (1 << 15) | RGB8(r, g, b);
#endif

		// Jefklak 20/11/06 - also update lower screen palette
		//BG_PALETTE[i]=RGB8(r,g,b);
		//if(!gen_console_enable)
			//BG_PALETTE_SUB[i] = RGB8(r, g, b);
	}
#ifdef DS3D
	c = ds_palette[255];
	ds_palette[255] = ds_palette[0];
	ds_palette[0] = c;
	if (ds_pal_init) {
		ds_texture_pal = ndsTexLoadPal(ds_palette, 256, GL_RGB256);
		glColorTable(GL_RGB256, ds_texture_pal);
		ds_pal_init = 0;
	}
	else {
		DC_FlushAll();
		vramSetBankF(VRAM_F_LCD);
		dmaCopyWords(0, (uint32*)ds_palette, (uint32*)&VRAM_F[ds_texture_pal >> 1], 256 * 2);
		vramSetBankF(VRAM_F_TEX_PALETTE);
	}
#endif
}

void copy_screen(int side) {
	u8* bufAdr = gfxGetFramebuffer(GFX_TOP, side, NULL, NULL);
	byte *src;
	int w, h;
	src = screens[0].data;

	for (w = 0; w<400; w++)
	{
		for (h = 0; h<240; h++)
		{
			u32 v = (w*240 + h) * 3;
			u32 v1 = ((239 - h) * 400 + w);
			bufAdr[v] = pal3ds[src[v1] * 3 + 0];
			bufAdr[v + 1] = pal3ds[src[v1] * 3 + 1];
			bufAdr[v + 2] = pal3ds[src[v1] * 3 + 2];
		}
	}
}

extern int renderframe;

void I_FinishUpdate(void)
{

#ifdef GL_DOOM
	if (V_GetMode() == VID_MODEGL) {
		// proff 04/05/2000: swap OpenGL buffers
		gld_Finish();
		return;
	}
#endif

	gfxFlushBuffers();
	gfxSwapBuffers();
#if 0
	{
		int h = 192;
		int w = 256;
		int step = 256;
		byte *src;
		byte *dest;

		dest = (unsigned char *)BG_GFX;
		src = screens[0].data;
		for (; h>0; h--)
		{
			dmaCopy(src, dest, w);
			dest += step;
			src += screens[0].byte_pitch;
		}
	}
#endif
	/* Update the display buffer (flipping video pages if supported)
	* If we need to change palette, that implicitely does a flip */
	if (newpal != NO_PALETTE_CHANGE) {
		I_UploadNewPalette(newpal);
		newpal = NO_PALETTE_CHANGE;
	}
}

void I_ShutdownGraphics(void)
{
}

static void I_InitInputs(void)
{
	int nomouse_parm = M_CheckParm("-nomouse");

	//I_InitJoystick();
}

#ifdef DS3D
void ds_stopGL() {
	powerOff(POWER_3D_CORE | POWER_MATRIX);	// enable 3D core & geometry engine
	videoBgDisable(0);
}

void ds_initGL() {
	int x;

	glInit();
	glEnable(GL_TEXTURE_2D);
	glClearColor(0, 0, 0, 31); // BG must be opaque for AA to work
	glClearPolyID(63); // BG must have a unique polygon ID for AA to work

	glCutoffDepth(0x7FFF);
	glEnable(GL_BLEND);
	glSetToonTableRange(0, 15, RGB15(8, 8, 8));
	glSetToonTableRange(16, 31, RGB15(24, 24, 24));
	glColor3f(1, 1, 1);

	glViewport(0, 0, 255, 191);


	glMatrixMode(GL_TEXTURE);
	glLoadIdentity();
	glScalef(16.0f, 16.0f, 16.0f);

	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(73.74, 256.0 / 192.0, 0.005, 40.0);

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	glEnable(GL_FOG);
	glFogShift(10);
	glFogColor(0, 0, 0, 31);
	glFogDensity(0, 8);
	for (x = 1; x<16; x++)
		glFogDensity(x, x * 8);
	for (; x<32; x++)
		glFogDensity(x, 127);
	glFogOffset(0);
	videoBgEnable(0);
}
#endif

void I_InitGraphics(void)
{
	char titlebuffer[2048];
	static int    firsttime = 1;

	if (firsttime)
	{
		firsttime = 0;

		atexit(I_ShutdownGraphics);
		lprintf(LO_INFO, "I_InitGraphics: %dx%d\n", SCREENWIDTH, SCREENHEIGHT);

		/* Set the video mode */
		I_UpdateVideoMode();

		/* Initialize the input system */
		I_InitInputs();
	}
}

#include "keyboard.h"
#include "doomstat.h"
#include "doomdef.h"
#include <3ds.h>
#include "d_event.h"
#include "v_video.h"
#include "st_stuff.h"


#define	automapactive ((automapmode & am_active) != 0)
boolean automapontop = false;
static boolean	automapactive_last = false;


void keyboard_draw_region(sregion_t *region, int index, u16 c);


int keyboard_visible_last = 0;
int	keyboard_visible = 1; //0=hidden,1=fullsize,2=mini - numbers only


static char key_buttons[] = "1234567890";


sregion_t key_button_array[] = {
	{ 32, 0, 0, 0, 0, 0, key_buttons, key_buttons },
	{ 270, 0, 6, 0, 0, 0x200, 0 },
	{ -30, 32 * 1, 7, 0, 0, KEYD_AUX1, KEYD_AUX1 },
	{ -30, 32 * 2, 7, 0, 0, KEYD_AUX2, KEYD_AUX2 },
	{ -30, 32 * 3, 7, 0, 0, KEYD_AUX3, KEYD_AUX3 },
	{ -30, 32 * 4, 7, 0, 0, KEYD_AUX4, KEYD_AUX4 },
	{ 254, 32 * 1, 7, 0, 0, KEYD_AUX5, KEYD_AUX5 },
	{ 254, 32 * 2, 7, 0, 0, KEYD_AUX6, KEYD_AUX6 },
	{ 254, 32 * 3, 7, 0, 0, KEYD_AUX7, KEYD_AUX7 },
	{ 254, 32 * 4, 7, 0, 0, KEYD_AUX8, KEYD_AUX8 },
};

static char key_row_1[] = "~1234567890-=";
static char key_row_1_shift[] = "`!@#$%^&*()_+";

static char key_row_2[] = "qwertyuiop[]\\";
static char key_row_2_shift[] = "QWERTYUIOP{}|";

static char key_row_3[] = "asdfghjkl;'";
static char key_row_3_shift[] = "ASDFGHJKL:\"";

static char key_row_4[] = "zxcvbnm,./";
static char key_row_4_shift[] = "ZXCVBNM<>?";

static char key_tab[] = "Tab";
static char key_caps[] = "Caps";
static char key_shift[] = "Shift";
static char key_ctrl[] = "Ctrl";
static char key_alt[] = "Alt";
static char key_space[] = "     SPACE      ";
static char key_backspace[] = "Bksp";
static char key_return[] = "Rtrn";

static sregion_t key_array[] = {
	{ 0, 0 * 16, 0, 0, 0, 0, key_row_1, key_row_1_shift },
	{ 13 * 16 + 2, 0 * 16, 1, 0, 0, KEYD_BACKSPACE, key_backspace },
	{ 0, 1 * 16, 1, 0, 0, KEYD_TAB, key_tab },
	{ 4 * 8, 1 * 16, 0, 0, 0, 0, key_row_2, key_row_2_shift },
	{ 0, 2 * 16, 1, 0, 0, KEYD_CAPSLOCK, key_caps },
	{ 5 * 8, 2 * 16, 0, 0, 0, 0, key_row_3, key_row_3_shift },
	{ 5 * 8 +
	11 * 16 +
	2, 2 * 16, 1, 0, 0, KEYD_ENTER, key_return },
	{ 0, 3 * 16, 1, 0, 0, KEYD_RSHIFT, key_shift },
	{ 6 * 8, 3 * 16, 0, 0, 0, 0, key_row_4, key_row_4_shift },
	{ 256 - 16 * 2, 3 * 16, 2, 0, 0, KEYD_UPARROW, 0 },
	{ 0, 4 * 16, 1, 0, 0, KEYD_RCTRL, key_ctrl },
	{ 5 * 8, 4 * 16, 1, 0, 0, KEYD_RALT, key_alt },
	{ 9 * 8, 4 * 16, 1, 0, 0, ' ', key_space },
	{ 256 - 16 * 3, 4 * 16, 3, 0, 0, KEYD_LEFTARROW, 0 },
	{ 256 - 16 * 2, 4 * 16, 4, 0, 0, KEYD_DOWNARROW, 0 },
	{ 256 - 16 * 1, 4 * 16, 5, 0, 0, KEYD_RIGHTARROW, 0 },
	{ 270, 4 * 16, 6, 0, 0, 0x200, 0 },
};

#define RGB8_to_565(r,g,b)  (((b)>>3)&0x1f)|((((g)>>2)&0x3f)<<5)|((((r)>>3)&0x1f)<<11)

static u16 keyboard_fg = RGB8_to_565(192, 192, 192);
static u16 keyboard_bg = RGB8_to_565(204, 102, 0);

static u16 keyboard_fg_sub = 5 * 16 + 8;
static u16 keyboard_bg_sub = 10 * 16 + 7;

#if 0
#define KEYBOARD_FULL_VOFS 160;
#define KEYBOARD_MINI_VOFS 224;
#define KEYBOARD_HOFS 32;
#else
#define KEYBOARD_FULL_VOFS 90;
#define KEYBOARD_MINI_VOFS 4;
#define KEYBOARD_HOFS 32;
#endif


static int keyboard_vofs;
static int keyboard_hofs;

static sregion_t *key_touching = 0;
static int key_touching_index = -1;
static int key_in_touch = 0;
static int last_in_touch = 0;

static int last_index = -1;
static sregion_t *last_touching = 0;

static int key_down = 0;
static int key_in_shift = 0;
static int key_in_ctrl = 0;
static int key_in_alt = 0;
static int key_in_caps = 0;

static int key_tap_time = -1;

static char key_arrow[12][12] = {
	{ 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 7, 7, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 7, 7, 7, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 7, 7, 7, 7, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0 },
	{ 0, 0, 0, 7, 7, 7, 7, 7, 7, 0, 0, 0 },
	{ 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 0, 0 },
	{ 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0 },
	{ 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0 },
	{ 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0 },
	{ 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 },
	{ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, }
};

void keyboard_init()
{
	int i, len;
	int count = sizeof(key_array) / sizeof(sregion_t);

	for (i = 0; i<count; i++)
	{
		switch (key_array[i].type) {
		case 0:
			len = strlen(key_array[i].text) * 16;
			key_array[i].dx = len;
			key_array[i].dy = 16;
			break;
		case 1:
			len = strlen(key_array[i].text) * 8 + 4;
			key_array[i].dx = len;
			key_array[i].dy = 16;
			break;
		case 7:
			key_array[i].dx = 32;
			key_array[i].dy = 32;
		default:
			key_array[i].dx = 16;
			key_array[i].dy = 16;
		}
	}
	count = sizeof(key_button_array) / sizeof(*key_button_array);

	for (i = 0; i<count; i++)
	{
		switch (key_button_array[i].type) {
		case 0:
			len = strlen(key_button_array[i].text) * 16;
			key_button_array[i].dx = len;
			key_button_array[i].dy = 16;
			break;
		case 1:
			len = strlen(key_button_array[i].text) * 8 + 4;
			key_button_array[i].dx = len;
			key_button_array[i].dy = 16;
			break;
		case 7:
			key_button_array[i].dx = 32;
			key_button_array[i].dy = 32;
			break;
		default:
			key_button_array[i].dx = 16;
			key_button_array[i].dy = 16;
			break;
		}
	}

	keyboard_vofs = KEYBOARD_FULL_VOFS;
	keyboard_hofs = KEYBOARD_HOFS;
	if (keyboard_visible == 2) {
		keyboard_vofs = KEYBOARD_MINI_VOFS;
	}
}

int keyboard_top() {
	return keyboard_vofs;
}

void keyboard_mark(sregion_t *region, int index, int in_touch) {
	last_touching = key_touching;
	last_index = key_touching_index;
	last_in_touch = key_in_touch;

	key_touching = region;
	key_touching_index = index;
	key_in_touch = in_touch;
	//check for shift and caps on keydown so that they get colored correctly
	if (key_touching && key_touching != last_touching) {
		if (key_touching->type == 6 || key_touching->type == 1) {

			switch (key_touching->key) {
			case 0x200:
				//change the keyboard layout
				keyboard_visible++;
				if (keyboard_visible > 2) {
					keyboard_visible = 1;
				}
				//clear touch to avoid layout change issues
				key_touching = last_touching = 0;
				key_touching_index = last_index = -1;
				break;
			case KEYD_RSHIFT:
				//force whole refresh
				keyboard_visible_last = -1;
				key_in_shift = key_in_shift ? 0 : 1;
				break;
			case KEYD_CAPSLOCK:
				//force whole refresh
				keyboard_visible_last = -1;
				key_in_caps = key_in_caps ? 0 : 1;
				break;
			}
		}
	}
	//draw regions here to avoid layout change issues
	//if (automapactive && !automapontop) {
		keyboard_draw_region_sub(last_touching, last_index, keyboard_fg_sub);
		keyboard_draw_region_sub(key_touching, key_touching_index, keyboard_bg_sub);
	//}
	//else {
	//	keyboard_draw_region(last_touching, last_index, keyboard_fg);
	//	keyboard_draw_region(key_touching, key_touching_index, keyboard_bg);
	//}
}

int keyboard_scankeys()
{
	static sregion_t *region;
	int keys;

	int i, len, x, y, pos;
	int count = sizeof(key_array) / sizeof(sregion_t);
	int key;

	if (keyboard_visible == 0)
	{
		key_down = 0;
		keyboard_mark(0, -1, 0);
		return 0;
	}

	x = y = -1;

#ifdef _3DS
	touchPosition	touch = { 0, 0 };
	keys = keysHeld();

	if (keys & KEY_TOUCH)
	{
		//if we are already touching something then bail
		//this causes only the initial key to register
		//and a single key per touch
		if (key_in_touch) {
			return key_down;
		}

		touchRead(&touch);
		x = touch.px - keyboard_hofs;
		y = touch.py - keyboard_vofs;
		//if (y < 0)
		//{
		//	keyboard_mark(0, -1, 1);
		//	return key_down;
		//}
		//printf("Touch: %d %d\n",x,y);
	}
	else
	{
		key_down = 0;
		keyboard_mark(0, -1, 0);
		return key_down;
	}

	region = key_array;
	if (keyboard_visible == 2)
	{
		region = key_button_array;
		count = sizeof(key_button_array) / sizeof(*key_button_array);
	}

	for (i = 0; i<count; i++)
	{
		if (y < region[i].y || y >(region[i].y + region[i].dy))
		{
			continue;
		}
		len = region[i].dx;
		if (x < region[i].x || x >(region[i].x + region[i].dx))
		{
			continue;
		}
		if (region[i].type == 0)
		{
			pos = (x - region[i].x) / 16;
		}
		else
		{
			pos = 0;
		}

		keyboard_mark(&region[i], pos, 1);
		if (!key_touching) {
			break;
		}
		switch (key_touching->type)
		{
		case 0:
			key_down = key_in_shift ? key_touching->shift_text[key_touching_index] : (key_in_caps ? toupper(key_touching->text[key_touching_index]) : key_touching->text[key_touching_index]);
			if (key_in_shift) {
				//force a full keyboard refresh
				keyboard_visible_last = -1;
				key_in_shift = 0;
			}
			break;
		default:
			key_down = key_touching->key;
			break;
		}

		return key_down;
	}

	//no key pressed but still in key touch
	keyboard_mark(0, -1, 1);
	return key_down;
#else
	return 0;
#endif
}

void keyboard_input() {
	static int key_last = 0;
	static int key = 0;
	event_t ev;

	key_last = key;
	key = keyboard_scankeys();
	if (key_last != 0 && key_last != key)
	{
		//printf("key up: %d %c\n", key_last, key_last);
		ev.type = ev_keyup;
		ev.data1 = key_last;
		D_PostEvent(&ev);
	}

	if (key != 0 && key != key_last)
	{
		//printf("key down: %d %c\n", key, key);
		ev.type = ev_keydown;
		ev.data1 = key;
		D_PostEvent(&ev);
	}
}

#ifdef _3DS
extern const u8 default_font_bin[];
static u16 *keyboard_screen;
#endif

#ifdef WIN32
const u8 default_font_bin[256 * 64];
static u16 keyboard_screen[320 * 240];
#endif


//============================

static byte *subscreen;
static int subscreen_width = 320;
static int subscreen_height = 240;

void keyboard_draw_char_sub(int x, int y, int c, u16 fg) {
	if (c < 0 || c > 256) return;

	u8 *fontdata = default_font_bin + (8 * c);
	u16 bg = 0;


	//if (currentConsole->flags & CONSOLE_UNDERLINE) b8 = 0xff;

	//if (currentConsole->flags & CONSOLE_CROSSED_OUT) b4 = 0xff;

	int i;
	//u8 *pscreen = &subscreen[(x * 240) + (239 - (y + 7))];
	u8 *pscreen = &subscreen[(y * subscreen_width) + x];
	u8 b1 = *(fontdata++);

	for (i = 0; i<8; i++) {
		if (b1 & 128) { pscreen[0] = fg; }
		//else { *(pscreen++) = bg; }
		if (b1 & 64) { pscreen[1] = fg; }
		//else { *(pscreen++) = bg; }
		if (b1 & 32) { pscreen[2] = fg; }
		//else { *(pscreen++) = bg; }
		if (b1 & 16) { pscreen[3] = fg; }
		//else { *(pscreen++) = bg; }
		if (b1 & 8) { pscreen[4] = fg; }
		//else { *(pscreen++) = bg; }
		if (b1 & 4) { pscreen[5] = fg; }
		//else { *(pscreen++) = bg; }
		if (b1 & 2) { pscreen[6] = fg; }
		//else { *(pscreen++) = bg; }
		if (b1 & 1) { pscreen[7] = fg; }
		//else { *(pscreen++) = bg; }
		b1 = *(fontdata++);
		pscreen += subscreen_width;
	}

}

void vline_sub(int x, int y, int len, u16 color) {
	int i;
	u8 *pscreen = &subscreen[(y * subscreen_width) + x];
	for (i = 0; i < len; i++) {
		*pscreen = color;
		pscreen += subscreen_width;
	}
}

void hline_sub(int x, int y, int len, u16 color) {
	int i;
	u8 *pscreen = &subscreen[(y * subscreen_width) + x];
	for (i = 0; i < len; i++) {
		*pscreen++ = color;
	}
}

void keyboard_draw_region_sub(sregion_t *region, int index, u16 cc) {
	int len;
	char *ch;
	u8 *pscreen;
	int j, k, pos;
	int x, y;
	u16 c = cc;

	if (region == 0) {
		return;
	}

	//bail if the keyboard is set to redraw
	if (keyboard_visible != keyboard_visible_last) {
		return;
	}

	x = keyboard_hofs + region->x;
	y = keyboard_vofs + region->y;
	//pscreen = &subscreen[(x * 240) + (239 - (y + 1 + 12))];
	pscreen = &subscreen[((y + 1 + 12) * 320) + x];

	if (region->type == 0)
	{
		ch = key_in_shift ? region->shift_text : region->text;
		pos = 0;
		while (ch && *ch)
		{
			if (region == key_touching && key_touching_index == pos) {
				c = keyboard_bg_sub;
			}
			else {
				c = cc;
			}
			if (index == -1 || index == pos) {
				//left/right sides
				vline_sub(x, y + 1, 14, c);
				vline_sub(x + 14, y + 1, 14, c);
				//top/bottom
				hline_sub(x + 1, y + 1, 14, c);
				hline_sub(x + 1, y + 14, 14, c);

				k = key_in_caps ? toupper(*ch) : *ch;
				keyboard_draw_char_sub(x + 3, y + 4, k, c);
			}
			ch++;
			x += 16;
			pos++;
		}
	}
	else if (region->type == 1)
	{
		if (region == key_touching) {
			c = keyboard_bg_sub;
		}
		else if ((region->key == KEYD_CAPSLOCK && key_in_caps) || (region->key == KEYD_RSHIFT && key_in_shift)) {
			c = 11 * 16;
		}
		else if ((region->key == KEYD_CAPSLOCK && !key_in_caps) || (region->key == KEYD_RSHIFT && !key_in_shift)) {
			c = cc;
		}
		else {
			c = cc;
		}
		ch = region->text;
		len = strlen(ch) * 8 + 4;

		//left/right sides
		vline_sub(x, y + 1, 14, c);
		vline_sub(x + len, y + 1, 14, c);
		//top/bottom
		hline_sub(x + 1, y + 1, len, c);
		hline_sub(x + 1, y + 14, len, c);

		while (ch && *ch)
		{
			keyboard_draw_char_sub(x + 3, y + 4, *ch, c);
			ch++;
			x += 8;
		}
	}
	else if (region->type == 2)
	{
		if (region == key_touching) {
			c = keyboard_bg_sub;
		}
		for (j = 0; j<12; j++)
		{
			for (k = 0; k<12; k++)
			{
				if (key_arrow[11 - j][11 - k])
					pscreen[k] = c;
			}
			pscreen -= subscreen_width;
		}
	}
	else if (region->type == 3)
	{
		if (region == key_touching) {
			c = keyboard_bg_sub;
		}
		for (j = 0; j<12; j++)
		{
			for (k = 0; k<12; k++)
			{
				if (key_arrow[k][j])
					pscreen[k] = c;
			}
			pscreen -= subscreen_width;
		}
	}
	else if (region->type == 4)
	{
		if (region == key_touching) {
			c = keyboard_bg_sub;
		}
		for (j = 0; j<12; j++)
		{
			for (k = 0; k<12; k++)
			{
				if (key_arrow[j][11 - k])
					pscreen[k] = c;
			}
			pscreen -= subscreen_width;
		}
	}
	else if (region->type == 5)
	{
		if (region == key_touching) {
			c = keyboard_bg_sub;
		}
		for (j = 0; j<12; j++)
		{
			for (k = 0; k<12; k++)
			{
				if (key_arrow[11 - k][j])
					pscreen[k] = c;
			}
			pscreen -= subscreen_width;
		}
	}
	else if (region->type == 6)
	{
		if (region == key_touching) {
			c = keyboard_bg_sub;
		}
		//left/right sides
		vline_sub(x, y + 1, 14, c);
		vline_sub(x + 14, y + 1, 14, c);
		//top/bottom
		hline_sub(x + 1, y + 1, 14, c);
		hline_sub(x + 1, y + 14, 14, c);
	}
	else if (region->type == 7)
	{
		if (region == key_touching) {
			c = keyboard_bg_sub;
		}
		//left/right sides
		vline_sub(x, y + 1, 30, c);
		vline_sub(x + 30, y + 1, 30, c);
		//top/bottom
		hline_sub(x + 1, y + 1, 30, c);
		hline_sub(x + 1, y + 30, 30, c);
	}
}


//============================

void keyboard_draw_char(int x, int y, int c, u16 fg) {
	if (c < 0 || c > 256) return;

	u8 *fontdata = default_font_bin + (8 * c);
	u16 bg = RGB8_to_565(0, 0, 0);// colorTable[screenColor];
								  //u16 fg = RGB8_to_565(192, 192, 192);// colorTable[writingColor];

	u8 b1 = *(fontdata++);
	u8 b2 = *(fontdata++);
	u8 b3 = *(fontdata++);
	u8 b4 = *(fontdata++);
	u8 b5 = *(fontdata++);
	u8 b6 = *(fontdata++);
	u8 b7 = *(fontdata++);
	u8 b8 = *(fontdata++);

	//if (currentConsole->flags & CONSOLE_UNDERLINE) b8 = 0xff;

	//if (currentConsole->flags & CONSOLE_CROSSED_OUT) b4 = 0xff;

	u8 mask = 0x80;
	int i;
	u16 *screen = &keyboard_screen[(x * 240) + (239 - (y + 7))];

	for (i = 0; i<8; i++) {
		if (b8 & mask) { *(screen++) = fg; }
		else { *(screen++) = bg; }
		if (b7 & mask) { *(screen++) = fg; }
		else { *(screen++) = bg; }
		if (b6 & mask) { *(screen++) = fg; }
		else { *(screen++) = bg; }
		if (b5 & mask) { *(screen++) = fg; }
		else { *(screen++) = bg; }
		if (b4 & mask) { *(screen++) = fg; }
		else { *(screen++) = bg; }
		if (b3 & mask) { *(screen++) = fg; }
		else { *(screen++) = bg; }
		if (b2 & mask) { *(screen++) = fg; }
		else { *(screen++) = bg; }
		if (b1 & mask) { *(screen++) = fg; }
		else { *(screen++) = bg; }
		mask >>= 1;
		screen += 240 - 8;
	}

}

void vline(int x, int y, int len, u16 color) {
	int i;
	u16 *screen = &keyboard_screen[(x * 240) + (239 - y)];
	for (i = 0; i < len; i++) {
		*screen-- = color;
	}
}

void hline(int x, int y, int len, u16 color) {
	int i;
	u16 *screen = &keyboard_screen[(x * 240) + (239 - y)];
	for (i = 0; i < len; i++) {
		*screen = color;
		screen += 240;
	}
}

void keyboard_draw_region(sregion_t *region, int index, u16 c) {
	int len;
	char *ch;
	u16 *screen;
	int j, k, pos;
	int x, y;

	if (region == 0) {
		return;
	}

	//bail if the keyboard is set to redraw
	if (keyboard_visible != keyboard_visible_last) {
		return;
	}

	x = keyboard_hofs + region->x;
	y = keyboard_vofs + region->y;
	screen = &keyboard_screen[(x * 240) + (239 - (y + 1 + 12))];

	if (region->type == 0)
	{
		ch = key_in_shift ? region->shift_text : region->text;
		pos = 0;
		while (ch && *ch)
		{
			if (index == -1 || index == pos) {
				//left/right sides
				vline(x, y + 1, 14, c);
				vline(x + 14, y + 1, 14, c);
				//top/bottom
				hline(x + 1, y + 1, 14, c);
				hline(x + 1, y + 14, 14, c);

				k = key_in_caps ? toupper(*ch) : *ch;
				keyboard_draw_char(x + 3, y + 4, k, c);
			}
			ch++;
			x += 16;
			pos++;
		}
	}
	else if (region->type == 1)
	{
		if ((region->key == KEYD_CAPSLOCK && key_in_caps) || (region->key == KEYD_RSHIFT && key_in_shift)) {
			c = keyboard_bg;
		}
		else if ((region->key == KEYD_CAPSLOCK && !key_in_caps) || (region->key == KEYD_RSHIFT && !key_in_shift)) {
			c = keyboard_fg;
		}
		ch = region->text;
		len = strlen(ch) * 8 + 4;

		//left/right sides
		vline(x, y + 1, 14, c);
		vline(x + len, y + 1, 14, c);
		//top/bottom
		hline(x + 1, y + 1, len, c);
		hline(x + 1, y + 14, len, c);

		while (ch && *ch)
		{
			keyboard_draw_char(x + 3, y + 4, *ch, c);
			ch++;
			x += 8;
		}
	}
	else if (region->type == 2)
	{
		for (j = 0; j<12; j++)
		{
			for (k = 0; k<12; k++)
			{
				if (key_arrow[11 - k][j])
					screen[k] = c;
			}
			screen += 240;
		}
	}
	else if (region->type == 3)
	{
		for (j = 0; j<12; j++)
		{
			for (k = 0; k<12; k++)
			{
				if (key_arrow[j][11 - k])
					screen[k] = c;
			}
			screen += 240;
		}
	}
	else if (region->type == 4)
	{
		for (j = 0; j<12; j++)
		{
			for (k = 0; k<12; k++)
			{
				if (key_arrow[k][j])
					screen[k] = c;
			}
			screen += 240;
		}
	}
	else if (region->type == 5)
	{
		for (j = 0; j<12; j++)
		{
			for (k = 0; k<12; k++)
			{
				if (key_arrow[11 - j][11 - k])
					screen[k] = c;
			}
			screen += 240;
		}
	}
	else if (region->type == 6)
	{
		//left/right sides
		vline(x, y + 1, 14, c);
		vline(x + 14, y + 1, 14, c);
		//top/bottom
		hline(x + 1, y + 1, 14, c);
		hline(x + 1, y + 14, 14, c);
	}
	else if (region->type == 7)
	{
		//left/right sides
		vline(x, y + 1, 30, c);
		vline(x + 30, y + 1, 30, c);
		//top/bottom
		hline(x + 1, y + 1, 30, c);
		hline(x + 1, y + 30, 30, c);
	}
}

void keyboard_draw()
{
#ifdef _3DS
	int i, h;
	sregion_t *region;
	int count;
	u16 width, height;

	if (keyboard_visible == 0)
	{
		return;
	}

	keyboard_screen = (u16*)gfxGetFramebuffer(GFX_BOTTOM, GFX_LEFT, &width, &height);
	subscreen = screens[5].data;

	//see if the keyboard layout has changed or automap toggled
	if ((keyboard_visible != keyboard_visible_last) || (automapactive ^ automapactive_last)) {
		keyboard_vofs = KEYBOARD_FULL_VOFS;
		keyboard_hofs = KEYBOARD_HOFS;
		h = keyboard_visible == 1 ? 4 : 11;
		if (!automapactive) {
			memset(subscreen, 0, screens[5].width * (screens[5].height - ST_SCALED_HEIGHT));
		}

		if (keyboard_visible == 2) {
			keyboard_vofs = KEYBOARD_MINI_VOFS;
		}
		//clear the console and set window size
		if (automapactive && !automapactive_last) {
			consoleClear();
			memset(keyboard_screen, 0, 320 * 240 * 2);
			consoleSetWindow(0, 0, h - 1, 40, automapontop ? 1 : 0);
		}
		else if (!automapactive && automapactive_last) {
			consoleClear();
			memset(keyboard_screen, 0, 320 * 240 * 2);
			consoleSetWindow(0, 0, 0, 40, h);
		}
		else {
			consoleClear();
			memset(keyboard_screen, 0, 320 * 240 * 2);
			if (keyboard_visible == 2) {
				h = 0;
			}
			consoleSetWindow(0, 0, 0, 40, h);
		}

		//printf("full refresh: %d %d\n", keyboard_visible, keyboard_visible_last);
		keyboard_visible_last = keyboard_visible;
		automapactive_last = automapactive;
	}
	else {
		//the keyboard layout has not changed so no need to draw everything
		if (automapactive && !automapontop) {
			//let it full draw on top of automap
		}
		else {
			return;
		}
	}

	region = key_array;
	count = sizeof(key_array) / sizeof(sregion_t);
	if (keyboard_visible == 2)
	{
		region = key_button_array;
		count = sizeof(key_button_array) / sizeof(*key_button_array);
	}



	for (i = 0; i<count; i++)
	{
		//if (automapactive && !automapontop) {
			keyboard_draw_region_sub(&region[i], -1, keyboard_fg_sub);
		//}
		//else {
		//	keyboard_draw_region(&region[i], -1, keyboard_fg);
		//}
	}
#endif
}



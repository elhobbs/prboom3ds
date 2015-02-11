#include "keyboard.h"
#include "doomstat.h"
#include "doomdef.h"
#include <3ds.h>
#include "d_event.h"

typedef struct {
	int x, y, type, dx, key;
	char *text, *shift_text;
} sregion_t;

int keyboard_visible_last = 1;
int	keyboard_visible = 1; //0=hidden,1=fullsize,2=mini - numbers only


static char key_buttons[] = "1234567890";

static sregion_t key_button_array[] = {
	{ 32, 0, 0, 0, 0, key_buttons, key_buttons },
	{ 270, 0, 6, 0, 0x200, 0 },
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
	{ 0, 0 * 16, 0, 0, 0, key_row_1, key_row_1_shift },
	{ 13 * 16 + 2, 0 * 16, 1, 0, KEYD_BACKSPACE, key_backspace },
	{ 0, 1 * 16, 1, 0, KEYD_TAB, key_tab },
	{ 4 * 8, 1 * 16, 0, 0, 0, key_row_2, key_row_2_shift },
	{ 0, 2 * 16, 1, 0, KEYD_CAPSLOCK, key_caps },
	{ 5 * 8, 2 * 16, 0, 0, 0, key_row_3, key_row_3_shift },
	{ 5 * 8 +
	11 * 16 +
	2, 2 * 16, 1, 0, KEYD_ENTER, key_return },
	{ 0, 3 * 16, 1, 0, KEYD_RSHIFT, key_shift },
	{ 6 * 8, 3 * 16, 0, 0, 0, key_row_4, key_row_4_shift },
	{ 256 - 16 * 2, 3 * 16, 2, 0, KEYD_UPARROW, 0 },
	{ 0, 4 * 16, 1, 0, KEYD_RCTRL, key_ctrl },
	{ 5 * 8, 4 * 16, 1, 0, KEYD_LALT, key_alt },
	{ 9 * 8, 4 * 16, 1, 0, ' ', key_space },
	{ 256 - 16 * 3, 4 * 16, 3, 0, KEYD_LEFTARROW, 0 },
	{ 256 - 16 * 2, 4 * 16, 4, 0, KEYD_DOWNARROW, 0 },
	{ 256 - 16 * 1, 4 * 16, 5, 0, KEYD_RIGHTARROW, 0 },
	{ 270, 4 * 16, 6, 0, 0x200, 0 },
};

static sregion_t *key_touching = 0;
static int key_touching_index = -1;
static int key_in_touch = 0;
static int last_in_touch = 0;

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
			break;
		case 1:
			len = strlen(key_array[i].text) * 8 + 4;
			key_array[i].dx = len;
			break;
		default:
			key_array[i].dx = 16;
		}
	}
	key_button_array[0].dx = strlen(key_button_array[0].text) * 16;
	key_button_array[1].dx = 16;
}

void keyboard_scankeys()
{
	static sregion_t *last_reg, *region;
	static int last_pos;
	int keys, vofs, hofs;

	int i, len, x, y, pos;
	int count = sizeof(key_array) / sizeof(sregion_t);

	if (keyboard_visible == 0)
	{
		last_reg = key_touching = 0;
		last_pos = key_touching_index = -1;
		return;
	}


	vofs = 156;
	hofs = 32;
	if (keyboard_visible == 2)
	{
		vofs = 220;
	}

	x = y = -1;


	touchPosition	touch = { 0, 0 };
	keys = keysHeld();

	if (keys & KEY_TOUCH)
	{
		touchRead(&touch);
		x = touch.px - hofs;
		y = touch.py - vofs;
		if (y < 0)
		{
			last_reg = key_touching = 0;
			last_pos = key_touching_index = -1;
			return;
		}
		key_in_touch = 1;
		//printf("Touch: %d %d\n",x,y);
	}
	else
	{
		key_in_touch = 0;
		goto end_quick;
	}

	region = &key_array[0];
	if (keyboard_visible == 2)
	{
		region = &key_button_array[0];
		count = 2;
	}

	for (i = 0; i<count; i++)
	{
		if (y < region[i].y || y >(region[i].y + 16))
		{
			//printf("1: %d %d\n",y,key_array[i].y);
			continue;
		}
		len = region[i].dx;
		if (x < region[i].x || x >(region[i].x + len))
		{
			//printf("2: %d %d %d\n",x,key_array[i].x,key_array[i].dx);
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

		if (last_reg == &region[i] && last_pos == pos)
			break;

		key_touching = &region[i];
		key_touching_index = pos;
		return;
	}

end_quick:
	last_reg = key_touching = 0;
	last_pos = key_touching_index = -1;
}

static int key_down = -1;

void keyboard_input() {
	int key;
	static int last_index = -1;
	static sregion_t *last_touching = 0;
	event_t event;

	keyboard_scankeys();
	if (key_touching_index == -1 && key_touching == 0)
	{
		if (key_down != -1)
		{
			event.type = ev_keyup;
			event.data1 = key_down;
			D_PostEvent(&event);
			//Key_Event(key_down, false);
			key_down = -1;
			last_index = -1;
			last_touching = 0;
		}
		last_in_touch = key_in_touch;
		return;
	}
	//printf("touching: %x %d\n",key_touching,key_touching_index);

	switch (key_touching->type)
	{
	case 0:
		key = key_in_shift ? key_touching->shift_text[key_touching_index] : (key_in_caps ? toupper(key_touching->text[key_touching_index]) : key_touching->text[key_touching_index]);
		key_in_shift = 0;
		break;
	default:
		key = key_touching->key;
		break;
	}
	if (key_down != -1 && key != key_down &&
		last_index != key_touching_index &&
		last_touching != key_touching)
	{
		//printf("key up: %d %c\n", key, key);
		event.type = ev_keyup;
		event.data1 = key_down;
		D_PostEvent(&event);
		//Key_Event(key_down, false);
	}
	if (key != key_down && last_in_touch == 0 && key_in_touch != 0)
	{
		//printf("key down: %d %c\n", key, key);
		event.type = ev_keydown;
		event.data1 = key;
		D_PostEvent(&event);
		//Key_Event(key, true);
		key_down = key;

		//check for shift
		if (key == KEYD_RSHIFT)
		{
			key_in_shift = key_in_shift ? 0 : 1;
		}
		//check for caps
		if (key == KEYD_CAPSLOCK)
		{
			key_in_caps = key_in_caps ? 0 : 1;
			return;
		}

		if (key == 0x200) {
			keyboard_visible = (keyboard_visible == 2 ? 1 : 2);
		}
	}

	last_in_touch = key_in_touch;
	last_index = key_touching_index;
	last_touching = key_touching;

}

extern const u8 default_font_bin[];
static u16 *vbuf;

void keyboard_draw_char(int x, int y, int c, u16 fg) {
	//---------------------------------------------------------------------------------
	//c -= currentConsole->font.asciiOffset;
	if (c < 0 || c > 256) return;

	u8 *fontdata = default_font_bin + (8 * c);

	//int writingColor = currentConsole->fg;
	//int screenColor = currentConsole->bg;

	//if (currentConsole->flags & CONSOLE_COLOR_BOLD) {
	//	writingColor += 8;
	//}
	//else if (currentConsole->flags & CONSOLE_COLOR_FAINT) {
	//	writingColor += 16;
	//}

	//if (currentConsole->flags & CONSOLE_COLOR_REVERSE) {
	//	int tmp = writingColor;
	//	writingColor = screenColor;
	//	screenColor = tmp;
	//}

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

	//int x = (currentConsole->cursorX + currentConsole->windowX) * 8;
	//int y = ((currentConsole->cursorY + currentConsole->windowY) * 8);

	u16 *screen = &vbuf[(x * 240) + (239 - (y + 7))];

	for (i = 0; i<8; i++) {
		if (b8 & mask) { *(screen++) = fg; }
		else{ *(screen++) = bg; }
		if (b7 & mask) { *(screen++) = fg; }
		else{ *(screen++) = bg; }
		if (b6 & mask) { *(screen++) = fg; }
		else{ *(screen++) = bg; }
		if (b5 & mask) { *(screen++) = fg; }
		else{ *(screen++) = bg; }
		if (b4 & mask) { *(screen++) = fg; }
		else{ *(screen++) = bg; }
		if (b3 & mask) { *(screen++) = fg; }
		else{ *(screen++) = bg; }
		if (b2 & mask) { *(screen++) = fg; }
		else{ *(screen++) = bg; }
		if (b1 & mask) { *(screen++) = fg; }
		else{ *(screen++) = bg; }
		mask >>= 1;
		screen += 240 - 8;
	}

}

void vline(int x, int y, int len, u16 color) {
	int i;
	u16 *screen = &vbuf[(x * 240) + (239 - y)];
	for (i = 0; i < len; i++) {
		*screen-- = color;
	}
}

void hline(int x, int y, int len, u16 color) {
	int i;
	u16 *screen = &vbuf[(x * 240) + (239 - y)];
	for (i = 0; i < len; i++) {
		*screen = color;
		screen += 240;
	}
}

void keyboard_draw()
{
	int i, j, k, pos;
	int x;
	int y;
	int len, vofs, hofs;
	char *buf, *ch;
	sregion_t *region;
	int count = sizeof(key_array) / sizeof(sregion_t);
	u16 width, height;
	u16 fg = RGB8_to_565(192, 192, 192);// colorTable[writingColor];
	u16 bg = RGB8_to_565(204, 102, 0);// colorTable[writingColor];
	u16 *screen;


	if (keyboard_visible == 0)
	{
		return;
	}

	vbuf = (u16*)gfxGetFramebuffer(GFX_BOTTOM, GFX_LEFT, &width, &height);;

	//erase the old keyboard
	if (keyboard_visible != keyboard_visible_last) {
		int i;
		int h = (keyboard_visible_last == 1 ? 90 : 20) * 2;
		for (i = 0; i < 320; i++) {
			memset(vbuf + i * 240, 0, h);
		}
		keyboard_visible_last = keyboard_visible;
		consoleSetWindow(0, 0, 0, 40, keyboard_visible == 1 ? 15 : 24);
		consoleClear();
	}

	vofs = 156;
	hofs = 32;

	region = &key_array[0];
	if (keyboard_visible == 2)
	{
		region = &key_button_array[0];
		count = 2;
		vofs = 220;
	}


	for (i = 0; i<count; i++)
	{
		u16 c = key_touching == &region[i] ? bg : fg;
		x = hofs + region[i].x;
		y = vofs + region[i].y;

		if (region[i].type == 0)
		{
			ch = key_in_shift ? region[i].shift_text : region[i].text;
			pos = 0;
			while (ch && *ch)
			{
				if (key_touching == &region[i] && key_touching_index == pos) {
					c = bg;
				}
				else {
					c = fg;
				}
				//left/right sides
				vline(x     , y +  1, 14, c);
				vline(x + 14, y +  1, 14, c);
				//top/bottom
				hline(x +  1, y +  1, 14, c);
				hline(x +  1, y + 14, 14, c);

				k = key_in_caps ? toupper(*ch) : *ch;
				keyboard_draw_char(x + 3, y + 4, k, c);
				ch++;
				x += 16;
				pos++;
			}
		}
		else if (region[i].type == 1)
		{
			ch = region[i].text;
			len = strlen(ch) * 8 + 4;
			if (key_touching == &region[i] ||
				(key_in_caps && region[i].key == KEYD_CAPSLOCK) ||
				(key_in_shift && region[i].key == KEYD_RSHIFT)) {
				c = bg;
			}
			else {
				c = fg;
			}

			//left/right sides
			vline(x      , y +  1,  14, c);
			vline(x + len, y +  1,  14, c);
			//top/bottom
			hline(x +   1, y +  1, len, c);
			hline(x +   1, y + 14, len, c);

			while (ch && *ch)
			{
				keyboard_draw_char(x + 3, y + 4, *ch, c);// , vbuf);
				ch++;
				x += 8;
			}
		}
		else if (region[i].type == 2)
		{
			screen = &vbuf[(x * 240) + (239 - (y + 1 + 12))];
			for (j = 0; j<12; j++)
			{
				for (k = 0; k<12; k++)
				{
					if (key_arrow[11-k][j])
						screen[k] = c;
				}
				screen += 240;
			}
		}
		else if (region[i].type == 3)
		{
			screen = &vbuf[(x * 240) + (239 - (y + 1 + 12))];
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
		else if (region[i].type == 4)
		{
			screen = &vbuf[(x * 240) + (239 - (y + 1 + 12))];
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
		else if (region[i].type == 5)
		{
			screen = &vbuf[(x * 240) + (239 - (y + 1 + 12))];
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
		else if (region[i].type == 6)
		{
			//left/right sides
			vline(x, y + 1, 14, c);
			vline(x + 14, y + 1, 14, c);
			//top/bottom
			hline(x + 1, y + 1, 14, c);
			hline(x + 1, y + 14, 14, c);
		}
	}

}


#pragma once

/*
#define	KEY_AUX1			207
#define	KEY_AUX2			208
#define	KEY_AUX3			209
#define	KEY_AUX4			210
#define	KEY_AUX5			211
#define	KEY_AUX6			212
#define	KEY_AUX7			213
#define	KEY_AUX8			214

#define KEY_TAB        9
#define KEY_CAPSLOCK   0xba                                        // phares
#define KEY_RCTRL      (0x80+0x1d)
#define KEY_RALT       (0x80+0x38)
#define KEY_RSHIFT     (0x80+0x36)

//
// most key data are simple ascii (uppercased)
//
#define	KEY_RIGHTARROW		0xae
#define	KEY_LEFTARROW		0xac
#define	KEY_UPARROW			0xad
#define	KEY_DOWNARROW		0xaf
#define	KEY_ESCAPE			27
#define	KEY_ENTER			13
#define	KEY_F1				(0x80+0x3b)
#define	KEY_F2				(0x80+0x3c)
#define	KEY_F3				(0x80+0x3d)
#define	KEY_F4				(0x80+0x3e)
#define	KEY_F5				(0x80+0x3f)
#define	KEY_F6				(0x80+0x40)
#define	KEY_F7				(0x80+0x41)
#define	KEY_F8				(0x80+0x42)
#define	KEY_F9				(0x80+0x43)
#define	KEY_F10				(0x80+0x44)
#define	KEY_F11				(0x80+0x57)
#define	KEY_F12				(0x80+0x58)

#define	KEY_BACKSPACE		127
#define	KEY_PAUSE			0xff

#define KEY_EQUALS			0x3d
#define KEY_MINUS			0x2d

#define	KEY_RSHIFT			(0x80+0x36)
#define	KEY_RCTRL			(0x80+0x1d)
#define	KEY_RALT			(0x80+0x38)

#define	KEY_LALT			KEY_RALT

#define KEY_FIVE			0x35
#define KEY_SIX				0x36
#define KEY_SEVEN			0x37
#define KEY_EIGHT			0x38
#define KEY_NINE			0x39
#define KEY_ZERO			0x30
#define KEY_BACKSLASH		0x5C */

typedef struct {
	int x, y, type, dx, dy, key;
	char *text, *shift_text;
} sregion_t;

extern sregion_t key_button_array[];

void keyboard_draw();
void keyboard_input();
int keyboard_top();

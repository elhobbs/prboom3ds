#if 0
#include <3ds.h>
#include <stdio.h>
#include <stdarg.h>
#include <sys/iosupport.h>
#include "font8x8_basic.h"

#define MAX_COL 50
#define MAX_ROW 30
static int c_row = 0;
static int c_col = 0;
static char text[MAX_ROW][MAX_COL];

void con_clear() {
	c_row = 0;
	c_col = 0;
	memset(text, 0, sizeof(text));
}

void consolePrintChar(char c) {
//---------------------------------------------------------------------------------
	if (c==0) return;


	if(c_col  >= MAX_COL) {
		c_col  = 0;
		c_row = (c_row+1) % MAX_ROW;
		memset(text[c_row],0,MAX_COL);
	}

	switch(c) {
		/*
		The only special characters we will handle are tab (\t), carriage return (\r), line feed (\n)
		and backspace (\b).
		Carriage return & line feed will function the same: go to next line and put cursor at the beginning.
		For everything else, use VT sequences.

		Reason: VT sequences are more specific to the task of cursor placement.
		The special escape sequences \b \f & \v are archaic and non-portable.
		*/
		case 8:
			c_col--;

			if(c_col < 0) {
				if(c_row > 0) {
					c_col = MAX_COL - 1;
					c_row--;
				} else {
					c_col = 0;
				}
			}
			text[c_row][c_col] = 0;
			//currentConsole->fontBgMap[currentConsole->cursorX + currentConsole->windowX + (currentConsole->cursorY + currentConsole->windowY) * currentConsole->consoleWidth] = currentConsole->fontCurPal | (u16)(' ' + currentConsole->fontCharOffset - currentConsole->font.asciiOffset);

			break;

		case 9:
			//currentConsole->cursorX  += currentConsole->tabSize - ((currentConsole->cursorX)%(currentConsole->tabSize));
			c_col += 3 - (c_col%3);
			break;
		case 10:
			c_row = (c_row+1) % MAX_ROW;
			memset(text[c_row],0,MAX_COL);
		case 13:
			c_col  = 0;
			break;
		default:
			text[c_row][c_col++] = c;
			//currentConsole->fontBgMap[currentConsole->cursorX + currentConsole->windowX + (currentConsole->cursorY + currentConsole->windowY) * currentConsole->consoleWidth] = currentConsole->fontCurPal | (u16)(c + currentConsole->fontCharOffset - currentConsole->font.asciiOffset);
			//++currentConsole->cursorX ;
			break;
	}
}

void drawFrame();

//---------------------------------------------------------------------------------
ssize_t con_write(struct _reent *r,int fd,const char *ptr, size_t len) {
//---------------------------------------------------------------------------------

	char chr;

	int i, count = 0;
	char *tmp = (char*)ptr;
	int intensity = 0;

	if(!tmp || len<=0) return -1;

	i = 0;

	while(i<len) {

		chr = *(tmp++);
		i++; count++;
#if 1
		if ( chr == 0x1b && *tmp == '[' ) {
			bool escaping = true;
			char *escapeseq	= tmp;
			int escapelen = 0;

			do {
				chr = *(tmp++);
				i++; count++; escapelen++;
				int parameter;

				switch (chr) {
					/////////////////////////////////////////
					// Cursor directional movement
					/////////////////////////////////////////
					case 'A':
						siscanf(escapeseq,"[%dA", &parameter);
						c_row = (c_row - parameter) < 0 ? 0 : c_row - parameter;
						escaping = false;
						break;
					case 'B':
						siscanf(escapeseq,"[%dB", &parameter);
						c_row = (c_row + parameter) > MAX_ROW - 1 ? MAX_ROW - 1 : c_row + parameter;
						escaping = false;
						break;
					case 'C':
						siscanf(escapeseq,"[%dC", &parameter);
						c_col = (c_col + parameter) > MAX_COL - 1 ? MAX_COL - 1 : c_col + parameter;
						escaping = false;
						break;
					case 'D':
						siscanf(escapeseq,"[%dD", &parameter);
						c_col = (c_col - parameter) < 0 ? 0 : c_col - parameter;
						escaping = false;
						break;
						/////////////////////////////////////////
						// Cursor position movement
						/////////////////////////////////////////
					case 'H':
					case 'f':
						siscanf(escapeseq, "[%d;%df", &c_row, &c_col);
						escaping = false;
						break;
						/////////////////////////////////////////
						// Screen clear
						/////////////////////////////////////////
					case 'J':
						con_clear();
						//consoleCls(escapeseq[escapelen-2]);
						escaping = false;
						break;
						/////////////////////////////////////////
						// Line clear
						/////////////////////////////////////////
					case 'K':
						//consoleClearLine(escapeseq[escapelen-2]);
						escaping = false;
						break;
						/////////////////////////////////////////
						// Save cursor position
						/////////////////////////////////////////
					case 's':
						//currentConsole->prevCursorX  = currentConsole->cursorX ;
						//currentConsole->prevCursorY  = currentConsole->cursorY ;
						escaping = false;
						break;
						/////////////////////////////////////////
						// Load cursor position
						/////////////////////////////////////////
					case 'u':
						//currentConsole->cursorX  = currentConsole->prevCursorX ;
						//currentConsole->cursorY  = currentConsole->prevCursorY ;
						escaping = false;
						break;
						/////////////////////////////////////////
						// Color scan codes
						/////////////////////////////////////////
					case 'm':
						siscanf(escapeseq,"[%d;%dm", &parameter, &intensity);

						//only handle 30-37,39 and intensity for the color changes
						parameter -= 30;

						//39 is the reset code
						if(parameter == 9){
							parameter = 15;
						}
						else if(parameter > 8){
							parameter -= 2;
						}
						else if(intensity){
							parameter += 8;
						}
						if(parameter < 16 && parameter >= 0){
							//currentConsole->fontCurPal = parameter << 12;
						}

						escaping = false;
						break;
				}
			} while (escaping);
			continue;
		}
#endif
		consolePrintChar(chr);
	}
	drawFrame();

	return count;
}

static const devoptab_t dotab_stdout = {
	"con",
	0,
	NULL,
	NULL,
	con_write,
	NULL,
	NULL,
	NULL
};

static const devoptab_t dotab_null = {
	"null",
	0,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL
};

void con_init() {
	static bool firstConsoleInit = true;

	if(firstConsoleInit) {
		devoptab_list[STD_OUT] = &dotab_stdout;
		devoptab_list[STD_ERR] = &dotab_stdout;

		setvbuf(stdout, NULL , _IONBF, 0);
		setvbuf(stderr, NULL , _IONBF, 0);

		firstConsoleInit = false;
	}
	con_clear();
}

u16 fbWidth, fbHeight;
u8* fbAdr;

void draw_char(int x, int y, int ord) {
    int set;
    int mask;

	char *bitmap = font8x8_basic[ord];

	int pos_x = x * 8 * 3;
	int pos_y = y * 8 * 3 * fbWidth;
	char *lcd = &fbAdr[pos_y + pos_x];

	for (x=0; x < 8; x++) {
		for (y=7; y >= 0; y--) {
			set = bitmap[y] & 1 << x;
			lcd[0] = set ? 0xff : 0;
			lcd[1] = set ? 0xff : 0;
			lcd[2] = set ? 0xff : 0;

			lcd += 3;
			//printf("%c", set ? 'X' : ' ');
		}
		lcd += (3*(fbWidth-8));
		//printf("\n");
	}
}

void con_draw() {
	static int indraw = 0;
	int x,y,row;

	if(indraw)
		return;
	indraw = 1;
	
	fbAdr=gfxGetFramebuffer(GFX_BOTTOM, GFX_LEFT, &fbWidth, &fbHeight);
	row = c_row;
	memset(fbAdr,0,fbWidth*fbHeight*3);

	for(y=0;y<MAX_ROW;y++) {
		for(x=0;x<MAX_COL;x++) {
			if(text[row][x])
				draw_char(y,x,text[row][x]);
		}
		row--;
		if(row < 0) {
			row = MAX_ROW - 1;
		}
	}
	indraw = 0;
}

#endif
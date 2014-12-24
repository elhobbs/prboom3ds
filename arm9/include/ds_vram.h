#pragma once
#include <nds.h>

typedef struct vramblock_s vramblock_t;

struct vramblock_s
{
	int size;
	short id;
	short tag;
	int prevtic;
	void **gfx;
	byte *block;
	vramblock_t *prev;
	vramblock_t *next;
};

typedef struct
{
	int size;               // total bytes malloced, including header
	int free;
	vramblock_t blocklist;  // start / end cap for linked list
	vramblock_t* rover;
} vramzone_t;

typedef struct
{
	uint32 params;
	vramblock_t* vram;
} gfx_t;

#define GFX_SIZE_S(x)           (x << 20)
#define GFX_SIZE_T(x)           (x << 23)
#define GFX_FORMAT(x)           (x << 26)
#define GFX_VRAM_OFFSET(x)      (((uint32)x >> 3) & 0xFFFF)

#define GFX_TEXTURE(f, w, h, fmt, offs) \
                    f               |   \
                    GFX_SIZE_S(w)   |   \
                    GFX_SIZE_T(h)   |   \
                    GFX_FORMAT(fmt) |   \
                    GFX_VRAM_OFFSET(offs)

void Z_VFree(vramblock_t* block);
vramblock_t* Z_VAlloc(int size, int tag, void* gfx);
int I_AllocVBlock(gfx_t* gfx, byte* data, int size, int flags, int texel_w, int texel_h, int type);
void I_UpdateVBlock(gfx_t* gfx, byte *data, int size);
void Z_InitVram();

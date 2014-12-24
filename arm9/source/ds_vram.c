#include "config.h"
#ifdef DS3D
#include <nds.h>
#include "ds_vram.h"
#include "z_zone.h"


extern int gametic;
#define ZONEID2 0x1d4a
#define GFX_BUFFER_SIZE     0x80000
static uint32* gfx_base = (uint32*)VRAM_A;
static byte    gfx_tex_buffer[GFX_BUFFER_SIZE];

static vramzone_t* vramzone = 0;

//
// Z_VFree
//

void Z_VFree(vramblock_t* block)
{
	vramzone_t* vram = vramzone;
	vramblock_t* other;

	if (block->id != ZONEID2)
		I_Error("Z_VFree: freed a block without ZONEID (%x)", vram->free);

	if (block->tag != PU_FREE && block->gfx != 0)
		*block->gfx = 0;

	// mark as free
	block->tag = PU_FREE;
	block->gfx = 0;
	block->prevtic = 0;

	other = block->prev;

	if (other->tag == PU_FREE)
	{
		// merge with previous free block
		other->size += block->size;
		other->next = block->next;
		other->next->prev = other;

		if (block == vram->rover)
			vram->rover = other;

		Z_Free(block);

		block = other;
	}

	other = block->next;

	if (other->tag == PU_FREE)
	{
		// merge the next free block onto the end
		block->size += other->size;
		block->next = other->next;
		block->next->prev = block;

		if (other == vram->rover)
			vram->rover = block;

		Z_Free(other);
	}
}

//
// Z_Valloc
//

#define MINFRAGMENT     64

vramblock_t* Z_VAlloc(int size, int tag, void* gfx)
{
	vramzone_t* vram = vramzone;
	int         extra;
	void        *result;
	vramblock_t *start;
	vramblock_t *rover;
	vramblock_t *newblock;
	vramblock_t *base;

	if (size & 7)
		I_Error("Z_VAlloc: size %i must be aligned to 8 bytes", size);

	// if there is a free block behind the rover,
	//  back up over them
	base = vram->rover;

	if (base->prev->tag == PU_FREE)
		base = base->prev;

	rover = base;
	start = base->prev;

	do
	{
		if (rover == start)
		{
			// scanned all the way around the list
			return 0;
		}

		if (rover->tag != PU_FREE)
		{
			if (gametic - rover->prevtic >= 2 &&
				rover->tag == PU_CACHE)
			{
				base = base->prev;

				Z_VFree(rover);
				base = base->next;
				rover = base->next;
			}
			else
				base = rover = rover->next;
		}
		else
		{
			rover = rover->next;
		}

	} while (base->tag != PU_FREE || base->size < size);

	// found a block big enough
	extra = base->size - size;

	if (extra > MINFRAGMENT)
	{
		// there will be a free fragment after the allocated block
		newblock = (vramblock_t*)Z_Calloc(sizeof(vramblock_t), 1, PU_STATIC, 0);
		newblock->size = extra;
		newblock->tag = PU_FREE;
		newblock->gfx = 0;
		newblock->block = base->block + size;
		newblock->prevtic = gametic;
		newblock->prev = base;
		newblock->next = base->next;
		newblock->next->prev = newblock;

		base->next = newblock;
		base->size = size;
	}

	base->gfx = gfx;
	base->tag = tag;
	base->id = ZONEID2;

	result = base;

	// next allocation will start looking here
	vram->rover = base->next;
	base->prevtic = gametic;

	return result;
}

//
// Z_VTouch
//

void Z_VTouch(void *ptr)
{
	vramblock_t *block = ptr;
	vramzone_t* vram = vramzone;
	if (block->id != ZONEID2)
		I_Error("Z_VTouch: touched a block without ZONEID");

	block->prevtic = gametic;
}

//
// Z_FreeVMemory
//

int Z_FreeVMemory()
{
	vramzone_t* vram = vramzone;
	vramblock_t* block;

	vram->free = 0;

	for (block = vram->blocklist.next;
		block != &vram->blocklist;
		block = block->next)
	{
		if (block->tag == PU_CACHE)
			vram->free += block->size;
	}

	return vram->free;
}

void Z_ResetVram()
{
	if (vramzone) {
		vramzone->rover = vramzone->blocklist.next;
	}
}

void I_UpdateVBlock(gfx_t* gfx, byte *data, int size) {
	int copyflag;

	if (!gfx->vram)
		return;

	if (((int)data | (int)gfx->vram->block | size) & 3)
		copyflag = (size >> 1) | COPY_MODE_HWORD;
	else
		copyflag = (size >> 2) | COPY_MODE_WORD;

	if (data) swiCopy(data, gfx->vram->block, copyflag);
}

int I_AllocVBlock(gfx_t* gfx, byte* data, int size, int flags, int texel_w, int texel_h, int type)
{
	if (gfx->params == 0)
	{
		int copyflag;

		if (!(gfx->vram = Z_VAlloc(size, PU_NEWBLOCK, &gfx->params)))
			return 0;

		if (((int)data | (int)gfx->vram->block | size) & 3)
			copyflag = (size >> 1) | COPY_MODE_HWORD;
		else
			copyflag = (size >> 2) | COPY_MODE_WORD;

		if(data) swiCopy(data, gfx->vram->block, copyflag);
	}
	else
		Z_VTouch(gfx->vram);

	gfx->params = GFX_TEXTURE(flags, texel_w, texel_h, type,
		((uint32*)gfx_base + ((gfx->vram->block - gfx_tex_buffer) >> 2)));

	return 1;
}


//
// Z_InitVram
//

void Z_InitVram()
{
	vramblock_t* vblock;

	vramzone = (vramzone_t*)Z_Calloc(sizeof(vramzone_t), 1, PU_STATIC, 0);
	vramzone->size = GFX_BUFFER_SIZE;
	vramzone->free = 0;

	// set the entire zone to one free block
	vramzone->blocklist.block = gfx_tex_buffer;
	vramzone->blocklist.next =
		vramzone->blocklist.prev =
		vblock = (vramblock_t*)Z_Calloc(sizeof(vramblock_t), 1, PU_STATIC, 0);

	vramzone->blocklist.gfx = (void*)vramzone;
	vramzone->blocklist.tag = PU_STATIC;
	vramzone->rover = vblock;

	vblock->prev = vblock->next = &vramzone->blocklist;

	// free block
	vblock->tag = PU_FREE;
	vblock->block = vramzone->blocklist.block;
	vblock->size = vramzone->size;
	vblock->prevtic = gametic;
}

static int 	gfxdmasize = 0;

void I_FinishFrame(void)
{
	vramblock_t* block;

	//I_CheckGFX();

	// wait for vblank before flushing cache
	while (REG_VCOUNT > 200);
	while (REG_VCOUNT < 150);

	// lock banks
	vramSetBankA(VRAM_A_LCD);
	vramSetBankB(VRAM_B_LCD);
	vramSetBankC(VRAM_C_LCD);
	vramSetBankD(VRAM_D_LCD);

	gfxdmasize = 0;

	// scan through list and check for any new block that needs to be dma'ed
	for (block = vramzone->blocklist.next; block != &vramzone->blocklist;
		block = block->next)
	{
		if (block->gfx == 0)
			continue;

		// new block
		if (block->tag == PU_NEWBLOCK)
		{
			uint32 src;
			uint32 dst;
			uint32* vram;
			uint32 copyflag;

			vram = (uint32*)gfx_base + (((*(uint32*)block->gfx & 0xffff) << 3) >> 2);
			src = (uint32)block->block;
			dst = (uint32)vram;

			// data is dma'ed asynchronously so don't copy
			// new data until it's done
			while (DMA0_CR & DMA_BUSY);

			// flush source and destination just to be sure
			DC_FlushRange(block->block, block->size);
			DC_FlushRange(vram, block->size);

			if ((src | dst | block->size) & 3)
				copyflag = DMA_COPY_HALFWORDS | (block->size >> 1);
			else
				copyflag = DMA_COPY_WORDS | (block->size >> 2);

			DMA0_SRC = src;
			DMA0_DEST = dst;
			DMA0_CR = copyflag;

			DC_InvalidateRange(vram, block->size);

			// mark this block as cache
			block->tag = PU_CACHE;
			gfxdmasize += block->size;
		}
	}

	// unlock banks
	vramSetBankA(VRAM_A_TEXTURE);
	vramSetBankB(VRAM_B_TEXTURE);
	vramSetBankC(VRAM_C_TEXTURE);
	vramSetBankD(VRAM_D_TEXTURE);

	//GFX_FLUSH = 3;
}
#endif
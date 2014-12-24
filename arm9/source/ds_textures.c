#include "config.h"
#ifdef DS3D
#include <nds.h>
#include "DoomDef.h"
#include "r_state.h"
#include "ds_textures.h"
#include "w_wad.h"
#include "lprintf.h"
#include "r_sky.h"

dstex_t		**textures_ds;

int ds_tex_size(int x)
{
	switch (x)
	{
	case 512:
		return 6;
	case 256:
		return 5;
	case 128:
		return 4;
	case 64:
		return 3;
	case 32:
		return 2;
	case 16:
		return 1;
	case 8:
		return 0;
	}
	return 0;
}

int ds_block_size(int x) {
	int w = 1;
	while (w < x) {
		w <<= 1;
	}
	return w;
}

int ds_adjust_size(int x, int max) {
	if (x > 128 && max > 128)
	{
		return 256;
	}
	if (x > 64 && max > 64)
	{
		return 128;
	}
	if (x > 32 && max > 32)
	{
		return 64;
	}
	if (x > 16 && max > 16)
	{
		return 32;
	}
	if (x > 8 && max > 8)
	{
		return 16;
	}
	return 8;
}

byte* ds_scale_texture(dstex_t *ds, int inwidth, int inheight, byte *in, byte *outt)
{
	int width, height, i, j, bw, bh;
	//int inwidth, inheight;
	unsigned	frac, fracstep;
	byte *inrow, *out;
	//int has255 = 0;
	width = ds->width;
	height = ds->height;

	bw = ds->block_width;
	bh = ds->block_height;

	if (inwidth == bw && inheight == bh)
	{
		out = outt;
		for (i = 0; i<bw*bh; i++) {
			switch (in[i]) {
			case 0xff:
				out[i] = 0;
				break;
			case 0:
				out[i] = 0xff;
				break;
			default:
				out[i] = in[i];
				break;
			}
		}
		return outt;
	}

	out = outt;
	fracstep = (inwidth << 16) / width;
	for (i = 0; i<height; i++, out += bw)
	{
		inrow = (in + inwidth*(i*inheight / height));
		frac = fracstep >> 1;
		for (j = 0; j<width; j++)
		{
			out[j] = inrow[frac >> 16];
			switch (out[j]) {
			case 0xff:
				out[j] = 0;
				break;
			case 0:
				out[j] = 0xff;
				break;
			default:
				break;
			}
			frac += fracstep;
		}
	}
	return outt;
}

#if 0
void ds_draw_column_in_cache(column_t* patch,byte* cache, int originy, int cacheheight) {
	int		count;
	int		position;
	byte*	source;
	byte*	dest;

	dest = (byte *)cache + 3;

	while (patch->topdelta != 0xff)
	{
		source = (byte *)patch + 3;
		count = patch->length;
		position = originy + patch->topdelta;

		if (position < 0)
		{
			count += position;
			position = 0;
		}

		if (position + count > cacheheight)
			count = cacheheight - position;

		if (count > 0)
		{
			memcpy(cache + position, source, count);
			//memset (mask + position, -1, count);
		}

		patch = (column_t *)((byte *)patch + patch->length + 4);
	}
}


byte* ds_scale_texture(dstex_t *ds, int inwidth, int inheight, byte *in, byte *outt)
{
	int width, height, i, j, bw, bh;
	//int inwidth, inheight;
	unsigned	frac, fracstep;
	byte *inrow, *out;
	//int has255 = 0;
	width = ds->width;
	height = ds->height;

	bw = ds->block_width;
	bh = ds->block_height;

	if (inwidth == bw && inheight == bh)
	{
		out = outt;
		for (i = 0; i<bw*bh; i++) {
			switch (in[i]) {
			case 0xff:
				out[i] = 0;
				break;
			case 0:
				out[i] = 0xff;
				break;
			default:
				out[i] = in[i];
				break;
			}
		}
		return outt;
	}

	out = outt;
	fracstep = (inwidth << 16) / width;
	for (i = 0; i<height; i++, out += bw)
	{
		inrow = (in + inwidth*(i*inheight / height));
		frac = fracstep >> 1;
		for (j = 0; j<width; j++)
		{
			out[j] = inrow[frac >> 16];
			switch (out[j]) {
			case 0xff:
				out[j] = 0;
				break;
			case 0:
				out[j] = 0xff;
				break;
			default:
				break;
			}
			frac += fracstep;
		}
	}
	return outt;
}

int ds_load_sky_texture(int name, int flags) {
	texture_t		*texture = textures[name];
	dstex_t			*ds = &textures_ds[name];

	int w, h;
	int bw, bh;

	if (ds->gfx.params) {
		return ds->gfx.params;
	}

	w = ds->width;
	h = ds->height;
	bw = ds->block_width;
	bh = ds->block_height;

	//if (ds->gfx.vram == 0) 
	{
		column_t *column;
		int i, j;
		byte *dst;
		byte *scol, *dcol, col[512];
		if (!I_AllocVBlock(&ds->gfx, 0, bw*bh,
			TEXGEN_TEXCOORD | GL_TEXTURE_WRAP_S | GL_TEXTURE_WRAP_T | GL_TEXTURE_COLOR0_TRANSPARENT,
			ds_tex_size(bw), ds_tex_size(bh), GL_RGB256)) {
			return 0;
		}
		dst = ds->gfx.vram->block;

		for (i = 0; i<w; i++)
		{
			scol = R_GetColumn(name, i);
			dcol = &dst[i];
			for (j = 0; j<h; j++)
			{
				*dcol = *scol++;
				dcol += bw;
			}
		}
	}

	return ds->gfx.params;
}

int ds_load_map_texture(int name, int flags) {
	texture_t		*texture = textures[name];
	dstex_t			*ds = &textures_ds[name];

	int w, h;
	int bw, bh;

	if (ds->gfx.params) {
		return ds->gfx.params;
	}

	w = ds->width;
	h = ds->height;
	bw = ds->block_width;
	bh = ds->block_height;

	//if (ds->gfx.vram == 0) 
	{
		column_t *column;
		int i, j;
		byte *src, *dst;
		byte *scol, *dcol, col[512];
		if (!I_AllocVBlock(&ds->gfx, 0, bw*bh,
			TEXGEN_TEXCOORD | GL_TEXTURE_WRAP_S | GL_TEXTURE_WRAP_T | GL_TEXTURE_COLOR0_TRANSPARENT,
			ds_tex_size(bw), ds_tex_size(bh), GL_RGB256)) {
			return 0;
		}
		dst = ds->gfx.vram->block;
		src = (byte *)Z_Malloc(w*h, PU_STATIC, 0);

		for (i = 0; i<w; i++)
		{
			if (name != skytexture && texture->columnlump[i] > 0) {
				memset(col, 0xff, h);
				column = (column_t *)(R_GetColumn(name, i) - 3);
				ds_draw_column_in_cache(column, col, 0, texture->height);
				scol = &col[0];
			}
			else {
				scol = R_GetColumn(name, i);
			}
			dcol = &src[i];
			for (j = 0; j<h; j++)
			{
				*dcol = *scol++;
				dcol += w;
			}
		}
		ds_scale_texture(ds, w, h, src, dst);
		Z_Free(src);
	}
		
	return ds->gfx.params;
}

int ds_load_sprite(int name) {
	dstex_t			*ds = &sprites_ds[name];
	int w, h;
	int bw, bh;
	
	if (ds->gfx.params) {
		return ds->gfx.params;
	}

	w = spritewidth[name] >> FRACBITS;
	h = spriteheight[name] >> FRACBITS;
	bw = ds->block_width;
	bh = ds->block_height;

	//if (ds->gfx.vram == 0) 
	{
		patch_t *patch = (patch_t *)W_CacheLumpNum(firstspritelump + name);
		column_t *column;
		int i, j;
		byte *scol, *dcol, col[512];

		if (!I_AllocVBlock(&ds->gfx, 0, bw*bh,
			TEXGEN_TEXCOORD | GL_TEXTURE_WRAP_S | GL_TEXTURE_WRAP_T | GL_TEXTURE_COLOR0_TRANSPARENT,
			ds_tex_size(bw), ds_tex_size(bh), GL_RGB256)) {
			W_UnlockLumpNum(firstspritelump + name); // cph - release lump
			return 0;
		}
		byte *dst = ds->gfx.vram->block;
		memset(dst, 0, bw*bh);

		for (i = 0; i<w; i++)
		{
			memset(col, 0xff, h);
			column = (column_t *)((byte *)patch + (patch->columnofs[i]));
			ds_draw_column_in_cache(column, col, 0, patch->height);
			scol = &col[0];
			dcol = &dst[i];
			for (j = 0; j<h; j++)
			{
				switch (*scol) {
				case 0xff:
					*dcol = 0;
					break;
				case 0:
					*dcol = 0xff;
					break;
				default:
					*dcol = *scol;
					break;
				}
				
				scol++;
				dcol += bw;
			}
		}
		W_UnlockLumpNum(firstspritelump + name); // cph - release lump
	}

	return ds->gfx.params;
}

int ds_load_map_flat(int name) {
	dstex_t			*ds = &flats_ds[name];
	int handle, length, size, ds_size, block, i, j, lump, texnum;
	byte *src, *addr;

	if (ds->gfx.params) {
		return ds->gfx.params;
	}

	ds_size = ds->block_width * ds->block_height;

	//if (ds->gfx.vram == 0) 
	{
		src = (byte *)W_CacheLumpNum(firstflat + name);
		if (!I_AllocVBlock(&ds->gfx, src, ds_size,
			TEXGEN_TEXCOORD | GL_TEXTURE_WRAP_S | GL_TEXTURE_WRAP_T,
			ds_tex_size(64), ds_tex_size(64), GL_RGB256)) {
			W_UnlockLumpNum(firstflat + name); // cph - release lump
			return 0;
		}

		W_UnlockLumpNum(firstflat + name); // cph - release lump
	}

	return ds->gfx.params;
}


int ds_adjust_size(int x, int max) {
	if (x > 128 && max > 128)
	{
		return 256;
	}
	if (x > 64 && max > 64)
	{
		return 128;
	}
	if (x > 32 && max > 32)
	{
		return 64;
	}
	if (x > 16 && max > 16)
	{
		return 32;
	}
	if (x > 8 && max > 8)
	{
		return 16;
	}
	return 8;
}
#endif

void ds_init_map_texture(int name, rpatch_t *patch, dstex_t *ds)
{
	int max[2];

	ds->name = name;
	if (patch->width <= 64 && patch->height <= 64)
	{
		max[0] = max[1] = 64;
	}
	else if (patch->width > 128 || patch->height > 128)
	{
		max[0] = 256;
		max[1] = 128;
	}
	else
	{
		max[0] = 128;
		max[1] = 64;
	}

	ds->block_width = ds_adjust_size(patch->width, max[0]);
	ds->block_height = ds_adjust_size(patch->height, max[0]);
	ds->width = patch->width;
	ds->height = patch->height;

	if (patch->width >= patch->height && ds->block_height > max[1])
	{
		ds->block_height = max[1];
	}
	else if (patch->height >= patch->width && ds->block_width > max[1])
	{
		ds->block_width = max[1];
	}
	ds->width_scale = (ds->block_width << 16) / patch->width;
	ds->height_scale = (ds->block_height << 16) / patch->height;

	ds->gfx.vram = 0;
	ds->gfx.params = 0;
}

dstex_t *ds_tex_map_texture(int name) {
	dstex_t *ds = textures_ds[name];
	if (!ds) {
		rpatch_t *patch = R_CacheTextureCompositePatchNum(name);
		texture_t *texture = textures[name];
		ds = textures_ds[name] = (dstex_t *)Z_Calloc(1, sizeof(dstex_t), PU_STATIC, 0);
		ds_init_map_texture(name, patch, ds);
		R_UnlockTextureCompositePatchNum(name);
	}
	return ds;
}

void ds_init_sprite(int name, dstex_t *ds, rpatch_t *patch)
{
	ds->name = name;
	ds->width = patch->width;
	ds->height = patch->height;

	ds->block_width = ds_block_size(patch->width);
	ds->block_height = ds_block_size(patch->height);

	ds->topoffset = patch->topoffset;
	ds->leftoffset = patch->leftoffset;

	ds->gfx.vram = 0;
	ds->gfx.params = 0;
}

dstex_t *ds_tex_sprite(int name) {
	dstex_t *ds = textures_ds[name];
	if (!ds) {
		rpatch_t *patch = R_CachePatchNum(name);
		ds = textures_ds[name] = (dstex_t *)Z_Calloc(1, sizeof(dstex_t), PU_STATIC, 0);
		ds_init_sprite(name, ds, patch);
		R_UnlockPatchNum(name);
	}
	return ds;
}

void ds_draw_column_in_cache(rcolumn_t* column, byte* cache, int originy, int cacheheight) {
	int		count;
	int		position;
	byte*	source;
	byte*	dest;
	int		i;
	rpost_t *post;

	dest = (byte *)cache + 3;
	for (i = 0; i < column->numPosts; i++) {
		const rpost_t *post = &column->posts[i];
		source = column->pixels + post->topdelta;
		count = post->length;
		position = originy + post->topdelta;
		if (count > 0)
		{
			memcpy(cache + position, source, count);
		}
	}
}

int ds_load_sprite(int name) {
	dstex_t *ds;
	int w, h;
	int bw, bh;
	rpatch_t *patch;

	name += firstspritelump;

	if (name < 0 || name > numlumps) {
		//printf("bad lump %d %d\n", name, numlumps);
		return 0;
	}

	ds = ds_tex_sprite(name);
	if (ds->gfx.params) {
		//printf("reuse lump %d %d %08x\n", name, numlumps, ds->gfx.params);
		return ds->gfx.params;
	}
	
	patch = R_CachePatchNum(name);

	w = patch->width;
	h = patch->height;
	bw = ds->block_width;
	bh = ds->block_height;

	rcolumn_t *column;
	int i, j;
	byte *scol, *dcol, col[512];

	if (!I_AllocVBlock(&ds->gfx, 0, bw*bh,
		TEXGEN_TEXCOORD | GL_TEXTURE_WRAP_S | GL_TEXTURE_WRAP_T | GL_TEXTURE_COLOR0_TRANSPARENT,
		ds_tex_size(bw), ds_tex_size(bh), GL_RGB256)) {
		R_UnlockPatchNum(name);
		return 0;
	}
	byte *dst = ds->gfx.vram->block;
	memset(dst, 0, bw*bh);

	for (i = 0; i<w; i++)
	{
		memset(col, 0xff, h);
		column = R_GetPatchColumnClamped(patch, i);
		ds_draw_column_in_cache(column, col, 0, ds->height);
		scol = col;
		dcol = &dst[i];
		for (j = 0; j<h; j++)
		{
			switch (*scol) {
			case 0xff:
				*dcol = 0;
				break;
			case 0:
				*dcol = 0xff;
				break;
			default:
				*dcol = *scol;
				break;
			}

			scol++;
			dcol += bw;
		}
	}
	R_UnlockPatchNum(name);

	return ds->gfx.params;
}

int ds_load_map_texture(int name, int flags) {
	texture_t		*texture = textures[name];
	dstex_t			*ds;

	int w, h;
	int bw, bh;

	ds = ds_tex_map_texture(name);
	if (ds->gfx.params) {
		return ds->gfx.params;
	}

	w = ds->width;
	h = ds->height;
	bw = ds->block_width;
	bh = ds->block_height;

	//if (ds->gfx.vram == 0) 
	{
		int i, j;
		byte *src, *dst;
		byte *scol, *dcol, col[512];
		rpatch_t *patch;
		rcolumn_t *column;

		if (!I_AllocVBlock(&ds->gfx, 0, bw*bh,
			TEXGEN_TEXCOORD | GL_TEXTURE_WRAP_S | GL_TEXTURE_WRAP_T | GL_TEXTURE_COLOR0_TRANSPARENT,
			ds_tex_size(bw), ds_tex_size(bh), GL_RGB256)) {
			return 0;
		}
		dst = ds->gfx.vram->block;
		src = (byte *)Z_Malloc(w*h, PU_STATIC, 0);
		patch = R_CacheTextureCompositePatchNum(name);

		for (i = 0; i<w; i++)
		{
			memset(col, 0xff, h);
			column = &patch->columns[i];
			ds_draw_column_in_cache(column, col, 0, h);
			scol = col;
			dcol = &src[i];
			for (j = 0; j<h; j++)
			{
				*dcol = *scol++;
				dcol += w;
			}
		}
		ds_scale_texture(ds, w, h, src, dst);
		R_UnlockTextureCompositePatchNum(name);
		Z_Free(src);
	}

	return ds->gfx.params;
}


void ds_init_flat(int name, dstex_t *ds)
{
	ds->name = name;
	ds->block_width = ds->width = 64;
	ds->block_height = ds->height = 64;

	ds->gfx.vram = 0;
	ds->gfx.params = 0;
}

int ds_load_map_flat(int name) {
	dstex_t *ds;
	int handle, length, size, ds_size, block, i, j, lump, texnum;
	byte *src, *addr;


	name += firstflat;

	if (name < 0 || name > numlumps) {
		//printf("bad lump %d %d\n", name, numlumps);
		return 0;
	}

	ds = textures_ds[name];
	if (!ds) {
		ds = textures_ds[name] = (dstex_t *)Z_Calloc(1, sizeof(dstex_t), PU_STATIC, 0);
		ds_init_flat(name, ds);
	}else if (ds->gfx.params) {
		//printf("reuse lump %d %d %08x\n", name, numlumps, ds->gfx.params);
		return ds->gfx.params;
	}

	ds_size = ds->block_width * ds->block_height;

	src = (byte *)W_CacheLumpNum(name);
	if (!I_AllocVBlock(&ds->gfx, src, ds_size,
		TEXGEN_TEXCOORD | GL_TEXTURE_WRAP_S | GL_TEXTURE_WRAP_T,
		ds_tex_size(64), ds_tex_size(64), GL_RGB256)) {
		W_UnlockLumpNum(name); // cph - release lump
		//printf("bad bad bad bad bad bad\n");
		return 0;
	}

	W_UnlockLumpNum(name); // cph - release lump

	//printf("good lump %d %d %08x\n", name, numlumps, ds->gfx.params);
	return ds->gfx.params;
}

void I_FinishFrame(void);

void ds_texture_cache_load() {
	I_FinishFrame();
}

void ds_init_textures() {
	textures_ds = (dstex_t **)Z_Calloc(sizeof(dstex_t **), numlumps, PU_STATIC, 0);
	Z_InitVram();
}

#endif
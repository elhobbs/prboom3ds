#ifndef __DS_TEXTURES_H__
#define __DS_TEXTURES_H__

#include "r_data.h"
#include "ds_vram.h"

#if 0
#define MIN(a,b) \
   ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
     _a < _b ? _a : _b; })

#define MAX(a,b) \
   ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
     _a > _b ? _a : _b; })
#endif

typedef struct dstex_s
{
	int			name;
	short		width, height;
	short		block_width, block_height;
	int			width_scale, height_scale;
	int			leftoffset, topoffset;
	gfx_t		gfx;
} dstex_t;

void ds_init_textures();
void ds_init_texture(int name,texture_t *tx,dstex_t *ds);
int ds_load_map_texture(int name,int flags);
dstex_t *ds_tex_map_texture(int name);
int ds_load_sky_texture(int name, int flags);

void ds_init_flat(int name,dstex_t *ds);
int ds_load_map_flat(int name);

void ds_init_sprite(int name,dstex_t *ds, rpatch_t *patch);
int ds_load_sprite(int name);
dstex_t *ds_tex_sprite(int name);

int ds_load_blank_tex();

extern texture_t	**textures;
extern dstex_t		**textures_ds;
extern int		firstflat;
extern int		firstspritelump, lastspritelump, numspritelumps;

#endif
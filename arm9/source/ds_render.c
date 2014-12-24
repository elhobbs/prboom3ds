#include "config.h"
#ifdef DS3D
#include <nds.h>
#include <math.h>
#include <stdlib.h>
#include <malloc.h>
#include "DoomDef.h"
#include "d_player.h"
#include "r_data.h"
#include "lprintf.h"
#include "m_bbox.h"
#include "doomstat.h"
#include "r_main.h"
#include "r_fps.h"

#ifdef WIN32
#include <gl\gl.h>
#include <gl\glu.h>
extern HWND openGL;
#endif

#ifdef ARM9
#include <nds\arm9\videogl.h>
#include <nds\arm9\postest.h>
int ds_anti_alias_id = 0;
#else
#define TEXGEN_TEXCOORD 0
#endif
#include "r_main.h"
#include "geometry.h"
#include "ds_textures.h"
#include <limits.h>


#define F_FLOOR(__x) ((__x)>>16)
#define F_CEIL(__x) (((__x)+(1<<15))>>16)
#define MINZ        (FRACUNIT*4)
#define	BASEYCENTER			100

void IR_DrawPlayerSprites (void);
void ds_texture_cache_load();
void ds_texture_cache_lock();
void ds_texture_cache_unlock();

void glRotateZ(float x);
void glRotateX(float x);
void glRotateY(float x);

PUREFUNC int R_PointOnSide(fixed_t x, fixed_t y, const node_t *node);
PUREFUNC int R_PointOnSegSide(fixed_t x, fixed_t y, const seg_t *line);
angle_t R_PointToAngle(fixed_t x, fixed_t y);
angle_t R_PointToAngle2(fixed_t x1, fixed_t y1, fixed_t x2, fixed_t y2);
subsector_t *R_PointInSubsector(fixed_t x, fixed_t y);

static float roll     = 0.0f;
/* JDC static */ float yaw      = 0.0f;
static float inv_yaw  = 0.0f;
static float pitch    = 0.0f;

#define __glPi 3.14159265358979323846


int viewwidth = SCREEN_WIDTH;
int viewwidthf = SCREEN_WIDTH<<16;
int viewheight = SCREEN_HEIGHT;
int viewheightfrac;
int viewwindowx = 0;
int viewwindowy = 0;

// counters
int		c_occludedSprites;
int		c_sectors;
int		c_subsectors;

int			r_framecount = 100;
extern int			validcount;		// increment every time a check is made


extern int screenblocks;

extern boolean		automapactive;
extern  int viewangleoffset;

extern fixed_t			projection;
extern fixed_t			centerxfrac, centeryfrac;


extern byte *host_basepal;

extern float ds_texture_width;
extern float ds_texture_height;

extern int    skyflatnum;
// The sky texture to be used instead of the F_SKY1 dummy.
extern int skytexture;

// Cleared to 0 at frame start.
// Individual columns will be set to 1 as occluding segments are processed.
// An occluding segment is either a one-sided line, a line that has a back
// sector with equal floor and ceiling heights, a line with a back ceiling
// height lower than the fron floor height, or a line with a back floor height
// higher than the front ceiling height.
// Entire nodes are culled when their bounds does not include a 0 column.
// Individual line segments are culled when their span does not include 0 columns.
// Sprites could be checked against it, but it may not be worth it.
char	occlusion[SCREEN_WIDTH + 2];	// +2 for guard columns to avoid clamping

// this matrix is exactly what GL uses, but there will still
// be floating point differences between the GPU and CPU
float	glMVPmatrix[16];

double	glMVPmatrixd[16];
double	glPJPmatrixd[16];
int	glView[4];

int dsMat[16];


typedef struct {
	//GLTexture		*texture;
	int				texture;
	sector_t		*sector;
	//subsector_t		*sub;
	boolean			ceiling;
} sortSectorPlane_t;

#define MAX_SECTOR_PLANES	1024
sortSectorPlane_t	sectorPlanes[MAX_SECTOR_PLANES];
int					numSectorPlanes;

typedef struct
{
	int ytop, ybottom;
	int ul, ur, vt, vb;
	float light;
	float alpha;
	float skyymid;
	float skyyaw;
	int name;
	byte flag;
	side_t	*side;
} GLWall;

GLWall gl_walls[2048];
int num_gl_walls = 0;

typedef struct
{
	int cm;
	int x, y, z;
	int vt, vb;
	int ul, ur;
	int x1, y1;
	int x2, y2;
	int light;
	fixed_t scale;
	int name;
	boolean shadow;
	boolean trans;
} GLSprite;

GLSprite gl_sprites[128];
int num_gl_sprites = 0;

long long ds_time() {
	return GetTicks();
}

int64 __div64_fixed(int64 num, int64 den)
{
	REG_DIVCNT = DIV_64_64;

	while (REG_DIVCNT & DIV_BUSY);

	REG_DIV_NUMER = (num << 16);
	REG_DIV_DENOM = den;

	while (REG_DIVCNT & DIV_BUSY);

	return (REG_DIV_RESULT);
}
static inline
int32 __mulf64(int32 a, int32 b)
{
	long long result = (long long)a * (long long)b;
	return (int32)(result >> 16);
}

// if any sector textures are the sky texture, we will draw the sky and
// ignore those sector geometries
boolean	skyIsVisible;

// used during debugging to isolate incorrect culling
int		failCount;

#ifdef WIN32
float	lightDistance = 10.0f;	// in prBoom MAP_SCALE units, increasing this makes things get dimmer faster
#define MAX_LIGHT_DROP	96
#endif

#ifdef ARM9
float	lightDistance = (10.0f);	// in prBoom MAP_SCALE units, increasing this makes things get dimmer faster
#define MAX_LIGHT_DROP	(96)
#endif

float	lightingVector[3];	// transform and scale [ x y 1 ] to get color units to subtract
static int FadedLighting(float x, float y, int sectorLightLevel) {
	// Ramp down the lightover lightDistance world units.
	// Triangles that extend across behind the view origin and past
	// the lightDistance clamping boundary will not have completely linear fading,
	// but nobody should notice.

	// A proportional drop in lighting sounds like a better idea, but
	// this linear drop seems to look nicer.  It's not like Doom's
	// lighting is realistic in any case...
#ifdef WIN32
	int	idist = x * lightingVector[0] + y * lightingVector[1] + lightingVector[2];
	if (idist < 0) {
		idist = 0;
	}
	else if (idist > MAX_LIGHT_DROP) {
		idist = MAX_LIGHT_DROP;
	}
	sectorLightLevel -= idist;
#endif
	if (sectorLightLevel < 0) {
		sectorLightLevel = 0;
	}
	if (sectorLightLevel > 255) {
		sectorLightLevel = 255;
	}
#ifdef ARM9
	return sectorLightLevel >> 3;
#endif
	return sectorLightLevel | (sectorLightLevel << 8) | (sectorLightLevel << 16) | (255 << 24);
}

//
// IR_ProjectSprite
// Generates a vissprite for a thing if it might be visible.
//

static void IR_ProjectSprite(mobj_t* thing, int lightlevel)
{
	fixed_t   gzt;               // killough 3/27/98
	fixed_t   tx;
	fixed_t   xscale;
	int       x1;
	int       x2;
	spritedef_t   *sprdef;
	spriteframe_t *sprframe;
	int       lump;
	boolean   flip;
	int	testLow;
	int testHigh;
	dstex_t *ds;

	// transform the origin point
	fixed_t tr_x, tr_y;
	fixed_t fx, fy, fz;
	fixed_t gxt, gyt;
	fixed_t tz;
	int width, height, topoffset, leftoffset;

	fx = thing->x;
	fy = thing->y;
	fz = thing->z;

	tr_x = fx - viewx;
	tr_y = fy - viewy;

	gxt = FixedMul(tr_x, viewcos);
	gyt = -FixedMul(tr_y, viewsin);

	tz = gxt - gyt;

	// thing is behind view plane?
	if (tz < MINZ)
		return;

	xscale = FixedDiv(projection, tz);

	gxt = -FixedMul(tr_x, viewsin);
	gyt = FixedMul(tr_y, viewcos);
	tx = -(gyt + gxt);

	// too far off the side?
	if (D_abs(tx)>(tz << 2))
		return;

	// decide which patch to use for sprite relative to player
#ifdef RANGECHECK
	if ((unsigned)thing->sprite >= (unsigned)numsprites)
		I_Error("R_ProjectSprite: Invalid sprite number %i", thing->sprite);
#endif

	sprdef = &sprites[thing->sprite];

#ifdef RANGECHECK
	if ((thing->frame&FF_FRAMEMASK) >= sprdef->numframes)
		I_Error("R_ProjectSprite: Invalid sprite frame %i : %i", thing->sprite,
		thing->frame);
#endif

	if (!sprdef->spriteframes)
		I_Error("R_ProjectSprite: Missing spriteframes %i : %i", thing->sprite,
		thing->frame);

	sprframe = &sprdef->spriteframes[thing->frame & FF_FRAMEMASK];

	if (sprframe->rotate)
	{
		// choose a different rotation based on player view
		// JDC: this could be better...
		angle_t ang = R_PointToAngle(fx, fy);
		unsigned rot = (ang - thing->angle + (unsigned)(ANG45 / 2) * 9) >> 29;
		lump = sprframe->lump[rot];
		flip = (boolean)sprframe->flip[rot];
	}
	else
	{
		// use single rotation for all views
		lump = sprframe->lump[0];
		flip = (boolean)sprframe->flip[0];
	}
	ds = ds_tex_sprite(lump + firstspritelump);

	{
		//rpatch_t* patch = R_CachePatchNum(lump+firstspritelump);
		width = ds->width << FRACBITS;
		height = ds->height << FRACBITS;
		leftoffset = ds->leftoffset << FRACBITS;
		topoffset = ds->topoffset << FRACBITS;

		/* calculate edges of the shape
		* cph 2003/08/1 - fraggle points out that this offset must be flipped
		* if the sprite is flipped; e.g. FreeDoom imp is messed up by this. */
		if (flip) {
			tx -= (width - leftoffset);// << FRACBITS;
		}
		else {
			tx -= leftoffset;// << FRACBITS;
		}
		x1 = (centerxfrac + FixedMul(tx, xscale)) >> FRACBITS;

		tx += width;//<<FRACBITS;
		x2 = ((centerxfrac + FixedMul(tx, xscale)) >> FRACBITS) - 1;

		gzt = fz + topoffset;// << FRACBITS);

		// JDC: we don't care if they never get freed,
		// so don't bother changing the zone tag status each time
		//R_UnlockPatchNum(lump+firstspritelump);
	}

	// off the side?
	if (x1 > viewwidth || x2 < 0)
		return;

	// killough 4/9/98: clip things which are out of view due to height
	// e6y: fix of hanging decoration disappearing in Batman Doom MAP02
	// centeryfrac -> viewheightfrac
	if (fz  > viewz + FixedDiv(viewheightfrac, xscale) ||
		gzt < viewz - FixedDiv(viewheightfrac - viewheight, xscale))
		return;

	// JDC: clip to the occlusion buffer
	testLow = x1 < 0 ? 0 : x1;
	testHigh = x2 >= viewwidth ? viewwidth - 1 : x2;
	if (!memchr(occlusion + testLow, 0, testHigh - testLow)) {
		c_occludedSprites++;
		return;
	}

	// ------------ gld_AddSprite ----------
	{
		mobj_t *pSpr = thing;
		GLSprite sprite;
		float voff, hoff;

		sprite.scale = xscale;//FixedDiv(projectiony, tz);
		if (pSpr->frame & FF_FULLBRIGHT)
			sprite.light = 255;
		else
			sprite.light = pSpr->subsector->sector->lightlevel + (extralight << 5);
		//sprite.cm=CR_LIMIT+(int)((pSpr->flags & MF_TRANSLATION) >> (MF_TRANSSHIFT));
		sprite.name = lump;//gltexture=gld_RegisterPatch(lump+firstspritelump,sprite.cm);
		//if (!sprite.gltexture)
		//	return;
		sprite.shadow = (pSpr->flags & MF_SHADOW) != 0;
		//sprite.trans  = (pSpr->flags & MF_TRANSLUCENT) != 0;
		/*if (movement_smooth)
		{
		sprite.x = (float)(-pSpr->PrevX + FixedMul (tic_vars.frac, -pSpr->x - (-pSpr->PrevX)))/MAP_SCALE;
		sprite.y = (float)(pSpr->PrevZ + FixedMul (tic_vars.frac, pSpr->z - pSpr->PrevZ))/MAP_SCALE;
		sprite.z = (float)(pSpr->PrevY + FixedMul (tic_vars.frac, pSpr->y - pSpr->PrevY))/MAP_SCALE;
		}
		else*/
		{
		sprite.x = -(pSpr->x);
		sprite.y = (pSpr->z);
		sprite.z = (pSpr->y);
		}

		sprite.vt = 0;
		sprite.vb = (ds->height);
		if (flip)
		{
			sprite.ul = 0;
			sprite.ur = (ds->width);
		}
		else
		{
			sprite.ul = (ds->width);
			sprite.ur = 0;
		}
		hoff = (leftoffset);
		voff = (topoffset);
		sprite.x1 = (hoff - width);
		sprite.x2 = (hoff);
		sprite.y1 = (voff);
		sprite.y2 = (voff - height);

		// JDC: don't let sprites poke below the ground level.
		// Software rendering Doom didn't use depth buffering, 
		// so sprites always got drawn on top of the flat they
		// were on, but in GL they tend to get a couple pixel
		// rows clipped off.
		if (sprite.y2 < 0) {
			sprite.y1 -= sprite.y2;
			sprite.y2 = 0;
		}

		/*if (gld_drawinfo.num_sprites>=gld_drawinfo.max_sprites)
		{
		gld_drawinfo.max_sprites+=128;
		gld_drawinfo.sprites=Z_Realloc(gld_drawinfo.sprites,gld_drawinfo.max_sprites*sizeof(GLSprite),PU_LEVEL,0);
		}
		gld_drawinfo.sprites[gld_drawinfo.num_sprites++]=sprite;
		*/
		if (num_gl_sprites < 128)
		{
			//printf("%d %f %f\n",num_gl_sprites,(float)width/65536.0f,(float)hoff/65536.0f);
			gl_sprites[num_gl_sprites++] = sprite;
		}

	}
}

PUREFUNC static int IR_PointOnSide(fixed_t x, fixed_t y, const node_t *node)
{
	// JDC: these early tests probably aren't worth it on iphone...
	if (!node->dx)
		return x <= node->x ? node->dy > 0 : node->dy < 0;

	if (!node->dy)
		return y <= node->y ? node->dx < 0 : node->dx > 0;

	x -= node->x;
	y -= node->y;

	// Try to quickly decide by looking at sign bits.
	if ((node->dy ^ node->dx ^ x ^ y) < 0)
		return (node->dy ^ x) < 0;  // (left is negative)

	return (int64_t)y * (int64_t)node->dx >= (int64_t)x * (int64_t)node->dy;
}

#define GLDWF_TOP 1
#define GLDWF_M1S 2
#define GLDWF_M2S 3
#define GLDWF_BOT 4
#define GLDWF_SKY 5
#define GLDWF_SKYFLIP 6

#ifdef ARM9
#define OU(w,seg) ((((seg)->sidedef->textureoffset+(seg)->offset)>>FRACBITS))
#define OV(w,seg) ((((seg)->sidedef->rowoffset)>>FRACBITS))
#define OV_PEG(w,seg,v_offset) (OV((w),(seg))-(((v_offset)>>FRACBITS)))
#else
#define OU(w,seg) (((float)((seg)->sidedef->textureoffset+(seg)->offset)/(float)FRACUNIT)/(float)textures[(w).name]->width)
#define OV(w,seg) (((float)((seg)->sidedef->rowoffset)/(float)FRACUNIT)/(float)textures[(w).name]->height)
#define OV_PEG(w,seg,v_offset) (OV((w),(seg))-(((float)(v_offset)/(float)FRACUNIT)/(float)textures[(w).name]->height))
#endif

// JDC: removed the 0.001f epsilons that were presumably added
// to try to hide T-junction cracks, but now that we are drawing
// source lines instead of clipped segs, it is a non-problem.
#define LINE seg->linedef

#define CALC_Y_VALUES(w, lineheight, floor_height, ceiling_height)\
(w).ytop=MAP_COORD(ceiling_height);\
(w).ybottom=MAP_COORD(floor_height);\
lineheight=((float)fabs(((ceiling_height)/(float)FRACUNIT)-((floor_height)/(float)FRACUNIT)));\
lineheight=(lineheight*textures_ds[(w).name]->height_scale)/(float)FRACUNIT

#define CALC_TEX_VALUES_MIDDLE1S(w, seg, peg, linelength, lineheight)\
(w).flag=GLDWF_M1S;\
(w).ul=OU((w),(seg))+(0.0f);\
(w).ur=OU((w),(seg))+((linelength));\
(peg)?\
(\
(w).vb=OV((w),(seg))+(textures_ds[(w).name]->height),\
(w).vt=((w).vb-((lineheight)))\
):(\
(w).vt=OV((w),(seg))+(0.0f),\
(w).vb=OV((w),(seg))+((lineheight))\
)


#define CALC_TEX_VALUES_BOTTOM(w, seg, peg, linelength, lineheight, v_offset)\
(w).flag=GLDWF_BOT;\
(w).ul=OU((w),(seg))+(0.0f);\
(w).ur=OU((w),(seg))+((linelength));\
(peg)?\
(\
(w).vb=OV_PEG((w),(seg),(v_offset))+(textures_ds[(w).name]->height),\
(w).vt=((w).vb-((lineheight)))\
):(\
(w).vt=OV((w),(seg))+(0.0f),\
(w).vb=OV((w),(seg))+((lineheight))\
)


#define CALC_TEX_VALUES_TOP(w, seg, peg, linelength, lineheight)\
(w).flag=GLDWF_TOP;\
(w).ul=OU((w),(seg))+(0.0f);\
(w).ur=OU((w),(seg))+((linelength));\
(peg)?\
(\
(w).vb=OV((w),(seg))+(textures_ds[(w).name]->height),\
(w).vt=((w).vb-((lineheight)))\
):(\
(w).vt=OV((w),(seg))+(0.0f),\
(w).vb=OV((w),(seg))+((lineheight))\
)

// e6y
// Sky textures with a zero index should be forced
// See third episode of requiem.wad
#define SKYTEXTURE(w)\
{\
(w).name=skytexture;\
(w).skyyaw=-2.0f*((yaw+90.0f)/90.0f);\
(w).skyymid = 200.0f/319.5f*((100.0f)/100.0f);\
(w).ul = (((yaw+90.0f)/90.0f)*256+ends[0]);\
(w).ur = (((yaw+90.0f)/90.0f)*256+ends[1]);\
(w).flag = GLDWF_SKY;\
};


#define ADDWALL(wall)\
{\
if (num_gl_walls < 2048)\
{\
gl_walls[num_gl_walls++]=*wall;\
}\
};

#ifdef ARM9
#define SKYWALLMAX 16000
#else
#define SKYWALLMAX 255.0f
#endif

void IR_AddWall(seg_t *seg, fixed_t ends[2])
{
	GLWall wall;
	//GLTexture *temptex;
	sector_t *frontsector;
	sector_t *backsector;
	int lineheight;
	int rellight = 0;
	int light;
	texture_t		*texture;
	dstex_t			*ds;

	//wall.glseg=NULL;
	wall.side = seg->sidedef;
	frontsector = seg->frontsector;

	// JDC: improve this lighting tweak
	rellight = seg->linedef->dx == 0 ? +8 : seg->linedef->dy == 0 ? -8 : 0;
	light = frontsector->lightlevel + rellight + (extralight << 5);
	wall.light = MAX(MIN((light), 255), 0);
	wall.alpha = 1.0f;
	wall.name = -1;
	//wall.gltexture=NULL;

	if (!seg->backsector) /* onesided */
	{
#ifndef SKYWALLS		
		if (frontsector->ceilingpic == skyflatnum)
		{
			wall.ytop = SKYWALLMAX;
			wall.ybottom = MAP_COORD(frontsector->ceilingheight);
			SKYTEXTURE(wall);
			ADDWALL(&wall);
		}
		if (frontsector->floorpic == skyflatnum)
		{
			wall.ytop = MAP_COORD(frontsector->floorheight);
			wall.ybottom = -SKYWALLMAX;
			SKYTEXTURE(wall);
			ADDWALL(&wall);
		}
#endif		
		//temptex=gld_RegisterTexture(texturetranslation[seg->sidedef->midtexture], true, false);
		//if (temptex)
		//{
		wall.name = texturetranslation[seg->sidedef->midtexture];
		ds = ds_tex_map_texture(wall.name);
		CALC_Y_VALUES(wall, lineheight, frontsector->floorheight, frontsector->ceilingheight);
		CALC_TEX_VALUES_MIDDLE1S(
			wall, seg, ((LINE->flags & ML_DONTPEGBOTTOM) == 0 ? 0 : 1),
			(FixedMul(seg->length,ds->width_scale)>>FRACBITS), lineheight
			);
		ADDWALL(&wall);
		//}
	}
#if 1
	else /* twosided */
	{
		int floor_height, ceiling_height;

		backsector = seg->backsector;
		/* toptexture */
		ceiling_height = frontsector->ceilingheight;
		floor_height = backsector->ceilingheight;
#ifndef SKYWALLS
		if (frontsector->ceilingpic == skyflatnum)
		{
			wall.ytop = SKYWALLMAX;
			if (
				// e6y
				// Fix for HOM in the starting area on Memento Mori map29 and on map30.
				// old code: (backsector->ceilingheight==backsector->floorheight) &&
				(backsector->ceilingheight == backsector->floorheight || (backsector->ceilingheight <= frontsector->floorheight)) &&
				(backsector->ceilingpic == skyflatnum)
				)
			{
				wall.ybottom = MAP_COORD(backsector->floorheight);
				SKYTEXTURE(wall);
				ADDWALL(&wall);
			}
			else
			{
				if ((texturetranslation[seg->sidedef->toptexture] != 0))
				{
					// e6y
					// It corrects some problem with sky, but I do not remember which one
					// old code: wall.ybottom=(float)frontsector->ceilingheight/MAP_SCALE;
					wall.ybottom = MAP_COORD(MAX(frontsector->ceilingheight, backsector->ceilingheight));

					SKYTEXTURE(wall);
					ADDWALL(&wall);
				}
				else
					if ((backsector->ceilingheight <= frontsector->floorheight) ||
						(backsector->ceilingpic != skyflatnum))
					{
					wall.ybottom = MAP_COORD(backsector->ceilingheight);
					SKYTEXTURE(wall);
					ADDWALL(&wall);
					}
			}
		}
#endif		
		if (floor_height<ceiling_height)
		{
			if (!((frontsector->ceilingpic == skyflatnum) && (backsector->ceilingpic == skyflatnum)))
			{
				wall.name = texturetranslation[seg->sidedef->toptexture];
				ds = ds_tex_map_texture(wall.name);
				///if ( !temptex ) {
				//	temptex = defaultTexture;	// it seems some line segments have bad data...
				//}
				//wall.gltexture=temptex;
				CALC_Y_VALUES(wall, lineheight, floor_height, ceiling_height);
				CALC_TEX_VALUES_TOP(
					wall, seg, ((LINE->flags & (ML_DONTPEGBOTTOM | ML_DONTPEGTOP)) == 0 ? 0 : 1),
					(FixedMul(seg->length,ds->width_scale)>>FRACBITS), lineheight
					);
				ADDWALL(&wall);
			}
		}

		/* midtexture */
		//e6y
		/*if (comp[comp_maskedanim])
		temptex=gld_RegisterTexture(seg->sidedef->midtexture, true, false);
		else
		// e6y
		// Animated middle textures with a zero index should be forced
		// See spacelab.wad (http://www.doomworld.com/idgames/index.php?id=6826)
		temptex=gld_RegisterTexture(texturetranslation[seg->sidedef->midtexture], true, true);*/
		wall.name = texturetranslation[seg->sidedef->midtexture];
		ds = ds_tex_map_texture(wall.name);

		if (/*temptex && */seg->sidedef->midtexture != 0)
		{
			//wall.gltexture=temptex;
			if ((LINE->flags & ML_DONTPEGBOTTOM) != 0)
			{
				if (seg->backsector->ceilingheight <= seg->frontsector->floorheight)
					goto bottomtexture;
				floor_height = MAX(seg->frontsector->floorheight, seg->backsector->floorheight) + (seg->sidedef->rowoffset);
				ceiling_height = floor_height + (textures[wall.name]->height << FRACBITS);
			}
			else
			{
				if (seg->backsector->ceilingheight <= seg->frontsector->floorheight)
					goto bottomtexture;
				ceiling_height = MIN(seg->frontsector->ceilingheight, seg->backsector->ceilingheight) + (seg->sidedef->rowoffset);
				floor_height = ceiling_height - (textures[wall.name]->height << FRACBITS);
			}
			// e6y
			// The fix for wrong middle texture drawing
			// if it exceeds the boundaries of its floor and ceiling

			/*CALC_Y_VALUES(wall, lineheight, floor_height, ceiling_height);
			CALC_TEX_VALUES_MIDDLE2S(
			wall, seg, (LINE->flags & ML_DONTPEGBOTTOM)>0,
			segs[seg->iSegID].length, lineheight
			);*/
			{
				fixed_t floormax, ceilingmin, linelen;
				//float mip;
				//mip = 1.0f;//(float)wall.gltexture->realtexheight/(float)wall.gltexture->buffer_height;
				//        if ( (texturetranslation[seg->sidedef->bottomtexture]!=R_TextureNumForName("-")) )
				if (seg->sidedef->bottomtexture)
					floormax = MAX(seg->frontsector->floorheight, seg->backsector->floorheight);
				else
					floormax = floor_height;
				if (seg->sidedef->toptexture)
					ceilingmin = MIN(seg->frontsector->ceilingheight, seg->backsector->ceilingheight);
				else
					ceilingmin = ceiling_height;
				linelen = abs(ceiling_height - floor_height);
				wall.ytop = MAP_COORD(MIN(ceilingmin, ceiling_height));
				wall.ybottom = MAP_COORD(MAX(floormax, floor_height));
				wall.flag = GLDWF_M2S;
				wall.ul = OU((wall), (seg)) + (0.0f);
				wall.ur = OU(wall, (seg)) + ((FixedMul(seg->length,ds->width_scale)>>FRACBITS));
				if (floormax <= floor_height)
					wall.vb = 1.0f;
				else
					wall.vb = ((float)(ceiling_height - floormax)) / linelen;
				if (ceilingmin >= ceiling_height)
					wall.vt = 0.0f;
				else
					wall.vt = ((float)(ceiling_height - ceilingmin)) / linelen;

#ifdef ARM9
				wall.vb *= (float)textures[wall.name]->height;
				wall.vt *= (float)textures[wall.name]->height;
#endif

			}

			wall.alpha = 1.0f;
			ADDWALL(&wall);
		}
	bottomtexture:
		/* bottomtexture */
		ceiling_height = backsector->floorheight;
		floor_height = frontsector->floorheight;
#ifndef SKYWALLS	
		if (frontsector->floorpic == skyflatnum)
		{
			wall.ybottom = -SKYWALLMAX;
			if (
				(backsector->ceilingheight == backsector->floorheight) &&
				(backsector->floorpic == skyflatnum)
				)
			{
				wall.ytop = MAP_COORD(backsector->floorheight);
				SKYTEXTURE(wall);
				ADDWALL(&wall);
			}
			else
			{
				if ((texturetranslation[seg->sidedef->bottomtexture] != 0))
				{
					wall.ytop = MAP_COORD(frontsector->floorheight);
					SKYTEXTURE(wall);
					ADDWALL(&wall);
				}
				else
					if ((backsector->floorheight >= frontsector->ceilingheight) ||
						(backsector->floorpic != skyflatnum))
					{
					wall.ytop = MAP_COORD(backsector->floorheight);
					SKYTEXTURE(wall);
					ADDWALL(&wall);
					}
			}
		}
#endif		
		if (floor_height<ceiling_height)
		{
			wall.name = texturetranslation[seg->sidedef->bottomtexture];
			ds = ds_tex_map_texture(wall.name);
			//temptex=gld_RegisterTexture(texturetranslation[seg->sidedef->bottomtexture], true, false);
			//if ( !temptex ) {
			//	temptex = defaultTexture;	// it seems some line segments have bad data...
			//}
			//wall.gltexture=temptex;
			CALC_Y_VALUES(wall, lineheight, floor_height, ceiling_height);
			CALC_TEX_VALUES_BOTTOM(
				wall, seg, ((LINE->flags & ML_DONTPEGBOTTOM) == 0 ? 0 : 1),
				(FixedMul(seg->length,ds->width_scale)>>FRACBITS), lineheight,
				floor_height - frontsector->ceilingheight
				);
			ADDWALL(&wall);
		}
	}
#endif
}

#if 0
/*
TransformAndClipSegment

Converts a world coordinate line segment to screen space.
Returns false if the segment is off screen.

There would be some savings if all the points in a subsector
were transformed and clip tested as a unit, instead of as discrete segments.
*/
#ifdef ARM9
boolean TransformAndClipSegment1(fixed_t v[2][2], int ends[2]) {
	fixed_t	clip[2][4];

	fixed_t	*v0, *v1;
	fixed_t	d0, d1;
	fixed_t	nearClip;
	int		i;
	//double xyz[2][3];

	v0 = v[0];
	v1 = v[1];

	PosTest((short)v0[0], 0, (short)v0[1]);
	clip[0][0] = (PosTestXresult()) << 4;
	clip[0][3] = (PosTestWresult()) << 4;

	PosTest((short)v1[0], 0, (short)v1[1]);
	clip[1][0] = (PosTestXresult()) << 4;
	clip[1][3] = (PosTestWresult()) << 4;

	//printf("%f %f %f\n",clip[0][0],clip[0][3],clip[0][0]/clip[0][3]);
	//printf("%f %f %f\n",clip[1][0],clip[1][3],clip[1][0]/clip[1][3]);
	//waitforit2();
	/*gluProject(v[0][0],0.0,v[0][1],
	glMVPmatrixd,glPJPmatrixd,glView,
	&xyz[0][0],&xyz[0][1],&xyz[0][2]);
	gluProject(v[1][0],0.0,v[1][1],
	glMVPmatrixd,glPJPmatrixd,glView,
	&xyz[1][0],&xyz[1][1],&xyz[1][2]);*/

	// clip to the near plane
	nearClip = 327;//0.0002f;
	d0 = clip[0][3] - nearClip;
	d1 = clip[1][3] - nearClip;
	if (d0 < 0 && d1 < 0) {
		// near clipped
		return false;
	}
	if (d0 < 0) {
		fixed_t f = FixedDiv(d0, (d0 - d1));
		clip[0][0] = clip[0][0] + FixedMul(f, (clip[1][0] - clip[0][0]));
		clip[0][3] = nearClip;
	}
	else if (d1 < 0) {
		fixed_t f = FixedDiv(d1, (d1 - d0));
		clip[1][0] = clip[1][0] + FixedMul(f, (clip[0][0] - clip[1][0]));
		clip[1][3] = nearClip;
	}

	if (clip[0][0] > clip[0][3]) {
		// entire segment is off the right side of the screen
		return false;
	}
	if (clip[1][0] < -clip[1][3]) {
		// entire segment is off the left side of the screen
		return false;
	}

	// project
	for (i = 0; i < 2; i++) {
		fixed_t x = (viewwidth * ((FixedDiv(clip[i][0], clip[i][3]) >> 1) + (1 << 15))) >> 16;
		if (x < 0) {
			x = 0;
		}
		else if (x > viewwidth) {
			x = viewwidth;
		}
		ends[i] = x;
	}

	//printf("trans: %f %f\n",ends[0],ends[1]);
	//waitforit2();
	// part of the segment is on screen
	return true;
}

#ifdef ARM9
int64 __div64_fixed(int64 num, int64 den)
{
	REG_DIVCNT = DIV_64_64;

	while (REG_DIVCNT & DIV_BUSY);

	REG_DIV_NUMER = (num << 16);
	REG_DIV_DENOM = den;

	while (REG_DIVCNT & DIV_BUSY);

	return (REG_DIV_RESULT);
}
static inline
int32 __mulf64(int32 a, int32 b)
{
	long long result = (long long)a * (long long)b;
	return (int32)(result >> 16);
}
#endif

boolean TransformAndClipSegment(float v[2][2], float ends[2]) {
	float	clip[2][4];

	float	*v0, *v1;
	float	d0, d1;
	float	nearClip;
	int		i;

	int x0, w0;
	int x1, w1;
	//double xyz[2][3];

	v0 = v[0];
	v1 = v[1];

	PosTest((short)v0[0], 0, (short)v0[1]);
	x0 = PosTestXresult();
	w0 = PosTestWresult();
	clip[0][0] = f32tofloat(x0);
	clip[0][3] = f32tofloat(w0);

	PosTest((short)v1[0], 0, (short)v1[1]);
	x1 = PosTestXresult();
	w1 = PosTestWresult();
	clip[1][0] = f32tofloat(x1);
	clip[1][3] = f32tofloat(w1);

	//printf("%f %f %f\n",clip[0][0],clip[0][3],clip[0][0]/clip[0][3]);
	//printf("%f %f %f\n",clip[1][0],clip[1][3],clip[1][0]/clip[1][3]);
	//waitforit2();
	/*gluProject(v[0][0],0.0,v[0][1],
	glMVPmatrixd,glPJPmatrixd,glView,
	&xyz[0][0],&xyz[0][1],&xyz[0][2]);
	gluProject(v[1][0],0.0,v[1][1],
	glMVPmatrixd,glPJPmatrixd,glView,
	&xyz[1][0],&xyz[1][1],&xyz[1][2]);*/

	// clip to the near plane
	//nearClip = 0.005f;//0.0002f;
	nearClip = 0.0002f;
	d0 = clip[0][3] - nearClip;
	d1 = clip[1][3] - nearClip;
	if (d0 < 0 && d1 < 0) {
		// near clipped
		return false;
	}
	if (d0 < 0) {
		float f = d0 / (d0 - d1);
		clip[0][0] = clip[0][0] + f * (clip[1][0] - clip[0][0]);
		clip[0][3] = nearClip;
	}
	else if (d1 < 0) {
		float f = d1 / (d1 - d0);
		clip[1][0] = clip[1][0] + f * (clip[0][0] - clip[1][0]);
		clip[1][3] = nearClip;
	}

	if (clip[0][0] > clip[0][3]) {
		// entire segment is off the right side of the screen
		return false;
	}
	if (clip[1][0] < -clip[1][3]) {
		// entire segment is off the left side of the screen
		return false;
	}

	// project
	for (i = 0; i < 2; i++) {
		float x = viewwidth * ((clip[i][0] / clip[i][3]) * 0.5 + 0.5);
		if (x < 0) {
			x = 0;
		}
		else if (x > viewwidth) {
			x = viewwidth;
		}
		ends[i] = x;
	}

	//printf("ends: %f %f\n",ends[0],ends[1]);
	//printf("endsf: %f %f\n",endsf[0]/65536.0f,endsf[1]/65536.0f);
	//while(1);
	//waitforit2();
	// part of the segment is on screen
	return true;
}
boolean TransformAndClipSegment3(fixed_t v[2][2], fixed_t ends[2]) {
	fixed_t	clipf[2][4];
	//fixed_t endsf[2];

	fixed_t	*v0, *v1;
	fixed_t	d0f, d1f;
	fixed_t nearClipf;
	int		i;

	int x0, w0;
	int x1, w1;
	//double xyz[2][3];

	v0 = v[0];
	v1 = v[1];

	PosTest((short)v0[0], 0, (short)v0[1]);
	x0 = PosTestXresult();
	w0 = PosTestWresult();
	clipf[0][0] = (x0) << 4;
	clipf[0][3] = (w0) << 4;

	PosTest((short)v1[0], 0, (short)v1[1]);
	x1 = PosTestXresult();
	w1 = PosTestWresult();
	clipf[1][0] = (x1) << 4;
	clipf[1][3] = (w1) << 4;

	//printf("%f %f %f\n",clip[0][0],clip[0][3],clip[0][0]/clip[0][3]);
	//printf("%f %f %f\n",clip[1][0],clip[1][3],clip[1][0]/clip[1][3]);
	//waitforit2();
	/*gluProject(v[0][0],0.0,v[0][1],
	glMVPmatrixd,glPJPmatrixd,glView,
	&xyz[0][0],&xyz[0][1],&xyz[0][2]);
	gluProject(v[1][0],0.0,v[1][1],
	glMVPmatrixd,glPJPmatrixd,glView,
	&xyz[1][0],&xyz[1][1],&xyz[1][2]);*/

	// clip to the near plane
	nearClipf = 13;//328;//0.0002f;
	d0f = clipf[0][3] - nearClipf;
	d1f = clipf[1][3] - nearClipf;
	if (d0f < 0 && d1f < 0) {
		// near clipped
		return false;
	}
	if (d0f < 0) {
		int64 ff = __div64_fixed(d0f, (d0f - d1f));
		clipf[0][0] = clipf[0][0] + (fixed_t)((ff * (int64)(clipf[1][0] - clipf[0][0])) >> 16);
		clipf[0][3] = nearClipf;
	}
	else if (d1f < 0) {
		int64 ff = __div64_fixed(d1f, (d1f - d0f));
		clipf[1][0] = clipf[1][0] + (fixed_t)((ff * (int64)(clipf[0][0] - clipf[1][0])) >> 16);
		clipf[1][3] = nearClipf;
	}

	if (clipf[0][0] > clipf[0][3]) {
		// entire segment is off the right side of the screen
		return false;
	}
	if (clipf[1][0] < -clipf[1][3]) {
		// entire segment is off the left side of the screen
		return false;
	}

	// project
	for (i = 0; i < 2; i++) {
		int64 xf = __div64_fixed(clipf[i][0], clipf[i][3]);
		xf = (xf >> 1) + (1 << 15);
		//fixed_t xf = viewwidth * ( ( FixedDiv(clip[i][0], clip[i][3] )>>1  )  + (1<<15) );
		xf = (xf * viewwidth);//>>16;
		if (xf < 0) {
			xf = 0;
		}
		else if (xf > viewwidthf) {
			xf = viewwidthf;
		}
		ends[i] = xf;
	}

	//printf("ends: %f %f\n",ends[0],ends[1]);
	//printf("endsf: %d %d\n",endsf[0],endsf[1]);
	//while(1);
	//waitforit2();
	// part of the segment is on screen
	return true;
}
#else
boolean TransformAndClipSegment(float v[2][2], float ends[2]) {
	float	clip[2][4];

	float	*v0, *v1;
	float	d0, d1;
	float	nearClip;
	int		i;
	//double xyz[2][3];

	v0 = v[0];
	v1 = v[1];

	//v0[0] = -MAP_COORD(60);
	//v0[1] = MAP_COORD(-600);
	// transform from model to clip space
	// because the iPhone screen hardware is portrait mode,
	// we need to look at the Y axis for the segment ends,
	// not the X axis.
	clip[0][0] = v0[0] * glMVPmatrix[0] + v0[1] * glMVPmatrix[2 * 4 + 0] + glMVPmatrix[3 * 4 + 0];
	//clip[0][1] = v0[0] * glMVPmatrix[1] + v0[1] * glMVPmatrix[2*4+1] + glMVPmatrix[3*4+1];
	//clip[0][2] = v0[0] * glMVPmatrix[2] + v0[1] * glMVPmatrix[2*4+2] + glMVPmatrix[3*4+2];
	clip[0][3] = v0[0] * glMVPmatrix[3] + v0[1] * glMVPmatrix[2 * 4 + 3] + glMVPmatrix[3 * 4 + 3];

	clip[1][0] = v1[0] * glMVPmatrix[0] + v1[1] * glMVPmatrix[2 * 4 + 0] + glMVPmatrix[3 * 4 + 0];
	//clip[1][1] = v1[0] * glMVPmatrix[1] + v1[1] * glMVPmatrix[2*4+1] + glMVPmatrix[3*4+1];
	//clip[1][2] = v1[0] * glMVPmatrix[2] + v1[1] * glMVPmatrix[2*4+2] + glMVPmatrix[3*4+2];
	clip[1][3] = v1[0] * glMVPmatrix[3] + v1[1] * glMVPmatrix[2 * 4 + 3] + glMVPmatrix[3 * 4 + 3];

	/*gluProject(v[0][0],0.0,v[0][1],
	glMVPmatrixd,glPJPmatrixd,glView,
	&xyz[0][0],&xyz[0][1],&xyz[0][2]);
	gluProject(v[1][0],0.0,v[1][1],
	glMVPmatrixd,glPJPmatrixd,glView,
	&xyz[1][0],&xyz[1][1],&xyz[1][2]);*/

	//printf("%f %f %f\n",clip[0][0],clip[0][3],clip[0][0]/clip[0][3]);
	//printf("%f %f %f\n",clip[1][0],clip[1][3],clip[1][0]/clip[1][3]);
	//waitforit2();

	// clip to the near plane
	nearClip = 0.01f;
	d0 = clip[0][3] - nearClip;
	d1 = clip[1][3] - nearClip;
	if (d0 < 0 && d1 < 0) {
		// near clipped
		return false;
	}
	if (d0 < 0) {
		float f = d0 / (d0 - d1);
		clip[0][0] = clip[0][0] + f * (clip[1][0] - clip[0][0]);
		clip[0][3] = nearClip;
	}
	else if (d1 < 0) {
		float f = d1 / (d1 - d0);
		clip[1][0] = clip[1][0] + f * (clip[0][0] - clip[1][0]);
		clip[1][3] = nearClip;
	}

	if (clip[0][0] > clip[0][3]) {
		// entire segment is off the right side of the screen
		return false;
	}
	if (clip[1][0] < -clip[1][3]) {
		// entire segment is off the left side of the screen
		return false;
	}

	// project
	for (i = 0; i < 2; i++) {
		float x = viewwidth * ((clip[i][0] / clip[i][3]) * 0.5 + 0.5);
		if (x < 0) {
			x = 0;
		}
		else if (x > viewwidth) {
			x = viewwidth;
		}
		ends[i] = x;
	}
	//printf("trans: %f %f\n",ends[0],ends[1]);
	//waitforit2();

	// part of the segment is on screen
	return true;
}
#endif

/*
IR_Subsector

All possible culling should be performed here, but most calculations should be
deferred until draw time, rather than storing intermediate values that are
later referenced.

Don't make this static, or the compiler inlines it in the recursive node
function, which bloats the stack.
*/

#ifdef ARM9
//extern u16		*ds_display_bottom;
u8 occlusion_buffer[256];

void fillOcculsionBuffer(int start, int end, int color) {

	/*u16 *row, c = color & 0xff;
	if (start < 0) start = 0;
	if (end > 255) end = 255;

	for (; start <= end; start++) {
		if (occlusion_buffer[start] == 0) {
			occlusion_buffer[start] = c;
		}
	}*/
}
void displayOcclusionBuffer() {

	/*u16 *row = &ds_display_bottom[128 * 182];
	u16 *src = (u16 *)occlusion_buffer;
	int i;
	for (i = 0; i<128; i++) {
		row[i] = src[i];
		row[i + 128] = src[i];
		row[i + 256] = src[i];
	}
	memset(occlusion_buffer, 0, 256);*/
}

void fillOcculsionBuffer2(int start, int end, int color) {

	/*u16 *row, c;
	if (start < 0) start = 0;
	if (end > 255) end = 255;

	row = &ds_display_bottom[128 * 182];
	if (start & 1) {
		c = *(row + start / 2) & 0xff00;
		c |= color;
		*row = c;
		*(row + 127) = c;
		start += 1;
	}
	if (end & 1) {
		c = *(row + end / 2) & 0x00ff;
		c |= (color << 8);
		*row = c;
		*(row + 127) = c;
		end -= 1;
	}
	row += (start / 2);
	c = color & 0xff;
	c |= (c << 8);
	for (; start <= end; start += 2) {
		*row++ = c;
		*(row + 127) = c;
		*(row + 127 + 128) = c;
		*(row + 127 + 128 + 128) = c;
	}*/
}
#endif

void IR_Subsector(int num)
{
	int i;
	int checkMin;
	int checkMax;
	int lightlevel;
	subsector_t *sub = &subsectors[num];
	sector_t *frontsector;
	mobj_t *thing;

	c_subsectors++;
	// at this point we know that at least part of the subsector is
	// not covered in the occlusion array

	// if the sector that this subsector is a part of has not already had its
	// planes and sprites added, add them now.
	frontsector = sub->sector;
	lightlevel = frontsector->lightlevel + (extralight << 5);

	/*sectorPlanes[numSectorPlanes].texture = flattranslation[frontsector->floorpic];//tex;
	sectorPlanes[numSectorPlanes].ceiling = false;
	//sectorPlanes[numSectorPlanes].sector = frontsector;
	sectorPlanes[numSectorPlanes].sub = sub;
	numSectorPlanes++;
	return;*/
	// There can be several subsectors in each sector due to non-convex
	// sectors or BSP splits, but we draw the floors, ceilings and lines
	// with a single draw call for the entire thing, so ensure that they
	// are only added once per frame.
	if (frontsector->validcount != validcount) {
		frontsector->validcount = validcount;

		c_sectors++;
		/*GLFlat flat;
		flat.sectornum = frontsector->iSectorID;
		flat.light = lightlevel;
		flat.uoffs= 0;	// no support in standard doom
		flat.voffs= 0;*/

		if (frontsector->floorheight < viewz) {
			if (frontsector->floorpic == skyflatnum) {
				skyIsVisible = true;
			}
			else {
				// get the texture. flattranslation is maintained by doom and
				// contains the number of the current animation frame
				//GLTexture *tex = gld_RegisterFlat(flattranslation[frontsector->floorpic], true);
				//if ( tex ) {
				sectorPlanes[numSectorPlanes].texture = flattranslation[frontsector->floorpic];//tex;
				sectorPlanes[numSectorPlanes].ceiling = false;
				sectorPlanes[numSectorPlanes].sector = frontsector;
				//sectorPlanes[numSectorPlanes].sub = sub;
				numSectorPlanes++;
				//}
			}
		}
		if (frontsector->ceilingheight > viewz) {
			if (frontsector->ceilingpic == skyflatnum) {
				skyIsVisible = true;
			}
			else {
				// get the texture. flattranslation is maintained by doom and
				// contains the number of the current animation frame
				//GLTexture *tex = gld_RegisterFlat(flattranslation[frontsector->ceilingpic], true);
				//if ( tex ) {
				sectorPlanes[numSectorPlanes].texture = flattranslation[frontsector->ceilingpic];//tex;
				sectorPlanes[numSectorPlanes].ceiling = true;
				sectorPlanes[numSectorPlanes].sector = frontsector;
				//sectorPlanes[numSectorPlanes].sub = sub;
				numSectorPlanes++;
				//}
			}
		}

		// Add all the sprites in this sector.
		// It would be better if they were linked into all the subsectors, because
		// we could do more accurate occlusion culling.  With non-convex sectors,
		// occasionally a sprite will be added in a rear portion of the sector that
		// would have been occluded away if everything was done in BSP subsector order.
		for (thing = frontsector->thinglist; thing; thing = thing->snext) {
			//printf("+%d ",thing->sprite);
			IR_ProjectSprite(thing, lightlevel);
		}
	}

	// If a segment in this subsector is not fully occluded, mark
	// the line that it is a part of as needing to be drawn.  Because
	// we are using a depth buffer, we can draw complete line segments
	// instead of just segments.
	for (i = 0; i < sub->numlines; i++) {
		fixed_t	v[2][2];
		fixed_t	floatEnds[2];
		seg_t *seg = &segs[sub->firstline + i];

		line_t *line = seg->linedef;

		// Determine if it will completely occlude farther objects.
		// Given that changing sector heights is much less common than
		// traversing lines during every render, it would be marginally better if
		// lines had an "occluder" flag on them that was updated as sectors
		// moved, but it hardly matters.
		boolean	occluder;
		if (seg->backsector == NULL ||
			seg->backsector->floorheight >= seg->backsector->ceilingheight ||
			seg->backsector->floorheight >= seg->frontsector->ceilingheight ||
			seg->backsector->ceilingheight <= seg->frontsector->floorheight) {
			// this segment can't be seen past, so fill in the occlusion table
			occluder = true;
		}
		else {
			// If the line has already been made visible and we don't need to
			// update the occlusion buffer, we don't need to do anything else here.
			// This happens when a line is split into multiple segs, and also
			// when the line is reached from the backsector.  In the backsector
			// case, it would be back-face culled, but this test throws it out
			// without having to transform and clip the ends.
			if (line->validcount == validcount) {
				continue;
			}

			// check to see if the seg won't draw any walls at all

			// we won't fill in the occlusion table for this
			occluder = false;
		}

		//xyz[0] = -MAP_COORD(wall->side->sideSeg.v1->x);
		//xyz[1] = wall->ytop;
		//xyz[2] = MAP_COORD(wall->side->sideSeg.v1->y);
		// transform and clip the two endpoints
		v[0][0] = -MAP_COORD(seg->v1->x);
		v[0][1] = MAP_COORD(seg->v1->y);
		v[1][0] = -MAP_COORD(seg->v2->x);
		v[1][1] = MAP_COORD(seg->v2->y);
#if 1
		if (!TransformAndClipSegment3(v, floatEnds)) {
			// the line is off to the side or facing away
			continue;
		}

		// Allow segs that we consider to be slightly back
		// facing to still pass through, because GPU floating
		// point calculations may not see them exactly the same.
		if (floatEnds[0] > floatEnds[1] + (3 << 15)) {
			// back face
			continue;
		}
		// Check it against the occlusion buffer.
		// Because the perspective divide is not going to be bit-exact between
		// the CPU and GPU, we check an extra column here.  That will result
		// in an occasional line being drawn that might not need to be, but
		// it avoids missing columns.
		checkMin = F_FLOOR(floatEnds[0]) - 1;
		checkMax = F_CEIL(floatEnds[1]) + 1;
		if (checkMin < 0) {
			checkMin = 0;
		}
		if (checkMax > viewwidth) {
			checkMax = viewwidth;
		}
		if (!memchr(occlusion + checkMin, 0, checkMax - checkMin)) {
			failCount++;
			// every column it would touch is already solid, so it isn't visible
			continue;
		}
		if (occluder) {
			// It is important to update the occlusion array as individual
			// segs are processed to maintain pure front to back order.  If
			// the occlusion buffer was updated by complete lines, it would
			// result in some elements being incorrectly occlusion culled.

			// Use a consistant fill rule for the occlusion, which is only
			// referenced by the CPU, and should be water tight.
			int fillMin = F_CEIL(floatEnds[0]);
			int fillMax = F_CEIL(floatEnds[1]);
			if (fillMax > fillMin) {
				int cc = (int)(seg - segs);
				cc &= 0x000000ff;
				memset(occlusion + fillMin, 1, fillMax - fillMin);
#ifdef ARM9
				fillOcculsionBuffer(fillMin, fillMax, cc);
#endif
			}
		}

#endif
		if (line->validcount == validcount) {
			continue;
		}
		line->validcount = validcount;

		// this line can show up on the automap now
		line->flags |= ML_MAPPED;

		// Adding a line may generate up to four drawn walls -- a top wall,
		// a bottom wall, a perforated middle wall, and a sky wall.
		// Use the complete, unclipped segment for the side
		floatEnds[0] >>= 16;
		floatEnds[1] >>= 16;
		IR_AddWall(&seg->sidedef->sideSeg, floatEnds);
	}
}

static const int checkcoord[12][4] = // killough -- static const
{
	{ 3, 0, 2, 1 },
	{ 3, 0, 2, 0 },
	{ 3, 1, 2, 0 },
	{ 0 },
	{ 2, 0, 2, 1 },
	{ 0, 0, 0, 0 },
	{ 3, 1, 3, 0 },
	{ 0 },
	{ 2, 0, 3, 1 },
	{ 2, 1, 3, 1 },
	{ 2, 1, 3, 0 }
};

#ifdef ARM9
static boolean IR_IsBBoxCompletelyOccluded(const fixed_t *bspcoord) {
	int boxpos;
	const int *check;
	fixed_t	v[2][2];
	fixed_t	ends[2];

	//return false;
	// conservatively accept if close to the box, so
	// we don't need to worry about the near clip plane
	// in TrnasformAndClipSegment.  Mapscale is 128*fracunit
	// and nearclip is 0.1, so accepting 2 fracunits away works.
	if (viewx > bspcoord[BOXLEFT] - 2 * FRACUNIT && viewx < bspcoord[BOXRIGHT] + 2 * FRACUNIT
		&& viewy > bspcoord[BOXBOTTOM] - 2 * FRACUNIT && viewy < bspcoord[BOXTOP] + 2 * FRACUNIT) {
		return false;
	}

	// Find the corners of the box
	// that define the edges from current viewpoint.
	boxpos = (viewx <= bspcoord[BOXLEFT] ? 0 : viewx < bspcoord[BOXRIGHT] ? 1 : 2) +
		(viewy >= bspcoord[BOXTOP] ? 0 : viewy > bspcoord[BOXBOTTOM] ? 4 : 8);

	check = checkcoord[boxpos];

	v[0][0] = -MAP_COORD(bspcoord[check[0]]);
	v[0][1] = MAP_COORD(bspcoord[check[1]]);

	v[1][0] = -MAP_COORD(bspcoord[check[2]]);
	v[1][1] = MAP_COORD(bspcoord[check[3]]);

	if (!TransformAndClipSegment3(v, ends)) {
		// the line is off to the side or facing away
		return true;
	}

	if (ends[0] >= ends[1]) {
		return true;
	}

	//assert( ends[0] >= 0 );
	//assert( ends[1] <= viewwidth );

	// Check it against the occlusion buffer, with an extra column
	// of slop to account for GPU / CPU floating point differences.
	if (!memchr(occlusion + F_FLOOR(ends[0]), 0, F_FLOOR(ends[1]) - F_FLOOR(ends[0]) + 1)) {
		// every column it would touch is already solid, so it isn't visible
		return true;
	}
	// there are gaps, so we may need to draw something
	return false;
}
#else
static boolean IR_IsBBoxCompletelyOccluded(const fixed_t *bspcoord) {
	int boxpos;
	const int *check;
	float	v[2][2];
	float	ends[2];

	//return false;
	// conservatively accept if close to the box, so
	// we don't need to worry about the near clip plane
	// in TrnasformAndClipSegment.  Mapscale is 128*fracunit
	// and nearclip is 0.1, so accepting 2 fracunits away works.
	if (viewx > bspcoord[BOXLEFT] - 2 * FRACUNIT && viewx < bspcoord[BOXRIGHT] + 2 * FRACUNIT
		&& viewy > bspcoord[BOXBOTTOM] - 2 * FRACUNIT && viewy < bspcoord[BOXTOP] + 2 * FRACUNIT) {
		return false;
	}

	// Find the corners of the box
	// that define the edges from current viewpoint.
	boxpos = (viewx <= bspcoord[BOXLEFT] ? 0 : viewx < bspcoord[BOXRIGHT] ? 1 : 2) +
		(viewy >= bspcoord[BOXTOP] ? 0 : viewy > bspcoord[BOXBOTTOM] ? 4 : 8);

	check = checkcoord[boxpos];

	v[0][0] = -MAP_COORD(bspcoord[check[0]]);
	v[0][1] = MAP_COORD(bspcoord[check[1]]);

	v[1][0] = -MAP_COORD(bspcoord[check[2]]);
	v[1][1] = MAP_COORD(bspcoord[check[3]]);

	if (!TransformAndClipSegment(v, ends)) {
		// the line is off to the side or facing away
		return true;
	}

	if (ends[0] >= ends[1]) {
		return true;
	}

	//assert( ends[0] >= 0 );
	//assert( ends[1] <= viewwidth );

	// Check it against the occlusion buffer, with an extra column
	// of slop to account for GPU / CPU floating point differences.
	if (!memchr(occlusion + (int)ends[0], 0, (int)ends[1] - (int)ends[0] + 1)) {
		// every column it would touch is already solid, so it isn't visible
		return true;
	}
	// there are gaps, so we may need to draw something
	return false;
}
#endif
/*
RenderBSPNode

Renders all subsectors below a given node,
traversing subtree recursively.
Because this function is recursive, avoid doing work that
would give a large stack frame.  Important that the compiler
doesn't inline big functions.
*/
static void IR_RenderBSPNode(int bspnum) {
	while (!(bspnum & NF_SUBSECTOR)) {
		// decision node
		const node_t *bsp = &nodes[bspnum];

		// Decide which side the view point is on.
		int side = IR_PointOnSide(viewx, viewy, bsp);

		// check the front space
		if (!IR_IsBBoxCompletelyOccluded(bsp->bbox[side])) {
			IR_RenderBSPNode(bsp->children[side]);
		}
		// continue down the back space
		if (IR_IsBBoxCompletelyOccluded(bsp->bbox[side ^ 1])) {
			return;
		}
		bspnum = bsp->children[side ^ 1];
	}

	// subsector with contents
	// add all the drawable elements in the subsector
	if (bspnum == -1) {
		bspnum = 0;
	}
	bspnum &= ~NF_SUBSECTOR;
	IR_Subsector(bspnum);
}

static void infinitePerspective(double fovy, double aspect, double znear)
{
	float left, right, bottom, top;	// JDC: was GLdouble
	float m[16];						// JDC: was GLdouble

	top = znear * tan(fovy * __glPi / 360.0);
	bottom = -top;
	left = bottom * aspect;
	right = top * aspect;

	//qglFrustum(left, right, bottom, top, znear, zfar);

	m[0] = (2 * znear) / (right - left);
	m[4] = 0;
	m[8] = (right + left) / (right - left);
	m[12] = 0;

	m[1] = 0;
	m[5] = (2 * znear) / (top - bottom);
	m[9] = (top + bottom) / (top - bottom);
	m[13] = 0;

	m[2] = 0;
	m[6] = 0;
	//m[10] = - (zfar + znear) / (zfar - znear);
	//m[14] = - (2 * zfar * znear) / (zfar - znear);
	m[10] = -1;
	m[14] = -2 * znear;

	m[3] = 0;
	m[7] = 0;
	m[11] = -1;
	m[15] = 0;
#ifdef WIN32
	glMultMatrixf(m);	// JDC: was glMultMatrixd
#endif
#ifdef ARM9
	{
		m4x4 mm;
		int i;
		for (i = 0; i<16; i++)
		{
			mm.m[i] = floattof32(m[i]);
		}
		glMultMatrix4x4(&mm);

	}
#endif
}

typedef struct {
	void *texture;
	void *user;
} texSort_t;

static int TexSort2(const void *a, const void *b) {
	if (((texSort_t *)a)->texture != ((texSort_t *)b)->texture) {
		if (((texSort_t *)a)->texture == (void *)skytexture) { return -1; }
		if (((texSort_t *)b)->texture == (void *)skytexture) { return 1; }
		if (((texSort_t *)a)->texture < ((texSort_t *)b)->texture) {
			return -1;
		}
	}
	else {
		return 0;
	}
	return 1;
}
static int TexSort(const void *a, const void *b) {
	if (((texSort_t *)a)->texture < ((texSort_t *)b)->texture) {
		return -1;
	}
	return 1;
}

#ifdef ARM9

void dsVertex3fv(float *v)
{
	short x, y, z;

	x = (short)(v[0]);
	y = (short)(v[1]);
	z = (short)(v[2]);

	DS_VERTEX3V16(x, y, z);
}

void dsVertex3f(float xx, float yy, float zz)
{
	short x, y, z;

	x = (short)(xx);
	y = (short)(yy);
	z = (short)(zz);

	DS_VERTEX3V16(x, y, z);
}

void dsTexCoord2fv(float *st)
{
	short s, t;

	s = st[0];
	t = st[1];
	DS_TEXCOORD2T16(s, t);
}

void dsTexCoord2f(float fs, float ft)
{
	short s, t;

	s = fs;
	t = ft;
	DS_TEXCOORD2T16(s, t);
}
#endif

int sky_mask_polyid;

#ifdef ARM9
int64 __div64(int64 num, int64 den)
{
	REG_DIVCNT = DIV_64_64;

	while (REG_DIVCNT & DIV_BUSY);

	REG_DIV_NUMER = num;
	REG_DIV_DENOM = den;

	while (REG_DIVCNT & DIV_BUSY);

	return (REG_DIV_RESULT);
}
#endif

void IR_RenderSkyWall(GLWall *wall) {
	float st[2];
	float xyz[3];
	int dir[2][3];
	int lightInt;
	int name = wall->name;
	int i;
#ifdef ARM9
	long long length;
#else
	__int64 length;
#endif

	dir[0][0] = MAP_COORD(wall->side->sideSeg.v1->x - viewx);
	dir[0][1] = wall->ytop - MAP_COORD(viewz);
	dir[0][2] = MAP_COORD(wall->side->sideSeg.v1->y - viewy);

	dir[1][0] = MAP_COORD(wall->side->sideSeg.v2->x - viewx);
	dir[1][1] = wall->ybottom - MAP_COORD(viewz);
	dir[1][2] = MAP_COORD(wall->side->sideSeg.v2->y - viewy);
	for (i = 0; i<2; i++) {
		length = dir[i][0] * dir[i][0] + dir[i][1] * dir[i][1] + dir[i][2] * dir[i][2];
#ifdef ARM9
		length = sqrt32(length >> 2);
#else
		length = sqrt(length >> 2);
#endif
		if (length == 0)
			length = 1;

#ifdef ARM9
		dir[i][0] = __div64((dir[i][0] * 1024), length);
		dir[i][1] = __div64((dir[i][1] * 128), length);
#else
		dir[i][0] = (__int64)(dir[i][0] * 256) / length;
		dir[i][1] = (__int64)(dir[i][1] * 128) / length;
#endif
		printf("%d - %d %d\n", i, dir[i][0], dir[i][1]);
	}

	dir[0][0] = wall->ul;
	dir[1][0] = wall->ur;

#ifdef ARM9
	glBegin(GL_QUADS);
	st[0] = dir[0][0];//wall->ul;
	st[1] = dir[0][1];//wall->vt;
	xyz[0] = -MAP_COORD(wall->side->sideSeg.v1->x);
	xyz[1] = wall->ytop;
	xyz[2] = MAP_COORD(wall->side->sideSeg.v1->y);
	lightInt = (name == skytexture ? 21 : FadedLighting(xyz[0], xyz[2], wall->light));
	//DS_COLOR(RGB15(lightInt,name == skytexture ? 0 : lightInt,name == skytexture ? 0 : lightInt));
	DS_COLOR(RGB15(lightInt, lightInt, lightInt));
	dsTexCoord2fv(st);
	dsVertex3fv(xyz);


	st[0] = dir[0][0];//wall->ul;
	st[1] = dir[1][1];//wall->vb;
	xyz[0] = -MAP_COORD(wall->side->sideSeg.v1->x);
	xyz[1] = wall->ybottom;
	xyz[2] = MAP_COORD(wall->side->sideSeg.v1->y);
	dsTexCoord2fv(st);
	dsVertex3fv(xyz);

	st[0] = dir[1][0];//wall->ur;
	st[1] = dir[1][1];//wall->vb;
	xyz[0] = -MAP_COORD(wall->side->sideSeg.v2->x);
	xyz[1] = wall->ybottom;
	xyz[2] = MAP_COORD(wall->side->sideSeg.v2->y);
	lightInt = (name == skytexture ? 21 : FadedLighting(xyz[0], xyz[2], wall->light));
	DS_COLOR(RGB15(lightInt, lightInt, lightInt));
	dsTexCoord2fv(st);
	dsVertex3fv(xyz);

	st[0] = dir[1][0];//wall->ur;
	st[1] = dir[0][1];//wall->vt;
	xyz[0] = -MAP_COORD(wall->side->sideSeg.v2->x);
	xyz[1] = wall->ytop;
	xyz[2] = MAP_COORD(wall->side->sideSeg.v2->y);
	dsTexCoord2fv(st);
	dsVertex3fv(xyz);
	glEnd();
#endif
}


void IR_RenderSprites(player_t* player)
{
	GLSprite *sprite;
	int i, k, name;
	// get the screen space vector for sprites
	float	yaws = -sin(yaw * 3.141592657 / 180.0);
	float	yawc = -cos(yaw * 3.141592657 / 180.0);
	fixed_t yawsin = -finesine[(ANG270-viewangle) >> ANGLETOFINESHIFT];
	fixed_t yawcos = -finecosine[(ANG270-viewangle) >> ANGLETOFINESHIFT];

	int x1, x2, y1, y2, z1, z2;

#ifdef WIN32
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	glEnable(GL_ALPHA_TEST);
	glEnable(GL_BLEND);
	glAlphaFunc(GL_GREATER, 0.5);
#endif		

	//iprintf("\n\nnum_gl_sprites: %d\n\n",num_gl_sprites);
	while (1)
	{
		// pick out the sprites from farthest to nearest
		fixed_t max_scale = INT_MAX;
		k = -1;
		for (i = 0; i < num_gl_sprites; i++) {
			sprite = &gl_sprites[i];
			//printf("i: %d max: %d spr: %d\n",i,max_scale,sprite->scale);
			if (sprite->scale<max_scale)
			{
				max_scale = sprite->scale;
				k = i;
			}
		}
		if (k == -1) {
			//printf("k == -1\n");
			break;
		}

		sprite = &gl_sprites[k];
		sprite->scale = INT_MAX;

		name = ds_load_sprite(sprite->name);
#ifdef ARM9
		GFX_TEX_FORMAT = name;
#endif
		if (sprite->shadow)
		{
#ifdef WIN32
			glBlendFunc(GL_DST_COLOR, GL_ONE_MINUS_SRC_ALPHA);
			glColor4f(0.2f, 0.2f, 0.2f, 0.33f);
			glAlphaFunc(GL_GREATER, 0.1);	// don't alpha test away the blended-down version
#endif
#ifdef ARM9
			DS_COLOR(RGB5(6, 6, 6));
			glPolyFmt(POLY_ALPHA(10) | POLY_CULL_NONE | POLY_ID(1) | BIT(11) | POLY_FOG);
			ds_anti_alias_id++;
			ds_anti_alias_id &= 63;
#endif
		}
		else
		{
#ifdef WIN32
			float	flight = (float)sprite->light*(1.0f / 255);

			// We could do the distance-lighting here, but leaving the sprites
			// brighter is a good accent in most cases.  There are a few places
			// where environmental sprites look a little wrong, but it is probably
			// better in general.

			if (player->fixedcolormap) {
				flight = 1.0;	// light amp goggles
			}
			glColor4f(flight, flight, flight, 1.0f);
#endif
#ifdef ARM9
			int light = ((int)sprite->light) >> 3;
			if (player->fixedcolormap) {
				light = 31;	// light amp goggles
			}
			DS_COLOR(RGB15(light, light, light));
			glPolyFmt(POLY_ALPHA(31) | POLY_CULL_NONE | POLY_ID(1) | BIT(11) | POLY_FOG);
			ds_anti_alias_id++;
			ds_anti_alias_id &= 63;
#endif
		}
#ifdef WIN32
		glBegin(GL_QUADS);
		glTexCoord2f(sprite->ul, sprite->vt);
		glVertex3f(MAP_COORD(sprite->x + sprite->x1 * yawc), MAP_COORD(sprite->y + sprite->y1), MAP_COORD(sprite->z + sprite->x1 * yaws));

		glTexCoord2f(sprite->ur, sprite->vt);
		glVertex3f(MAP_COORD(sprite->x + sprite->x2 * yawc), MAP_COORD(sprite->y + sprite->y1), MAP_COORD(sprite->z + sprite->x2 * yaws));

		glTexCoord2f(sprite->ur, sprite->vb);
		glVertex3f(MAP_COORD(sprite->x + sprite->x2 * yawc), MAP_COORD(sprite->y + sprite->y2), MAP_COORD(sprite->z + sprite->x2 * yaws));

		glTexCoord2f(sprite->ul, sprite->vb);
		glVertex3f(MAP_COORD(sprite->x + sprite->x1 * yawc), MAP_COORD(sprite->y + sprite->y2), MAP_COORD(sprite->z + sprite->x1 * yaws));
		glEnd();
#endif
#ifdef ARM9
		x1 = sprite->x + FixedMul(sprite->x1, yawcos);
		x2 = sprite->x + FixedMul(sprite->x2, yawcos);
		y1 = sprite->y + sprite->y1;
		y2 = sprite->y + sprite->y2;
		z1 = sprite->z + FixedMul(sprite->x1, yawsin);
		z2 = sprite->z + FixedMul(sprite->x2, yawsin);

		glBegin(GL_QUADS);
		DS_TEXCOORD2T16(sprite->ul, sprite->vt);
		DS_VERTEX3V16(MAP_COORD(x1), MAP_COORD(y1), MAP_COORD(z1));

		DS_TEXCOORD2T16(sprite->ur, sprite->vt);
		DS_VERTEX3V16(MAP_COORD(x2), MAP_COORD(y1), MAP_COORD(z2));

		DS_TEXCOORD2T16(sprite->ur, sprite->vb);
		DS_VERTEX3V16(MAP_COORD(x2), MAP_COORD(y2), MAP_COORD(z2));

		DS_TEXCOORD2T16(sprite->ul, sprite->vb);
		DS_VERTEX3V16(MAP_COORD(x1), MAP_COORD(y2), MAP_COORD(z1));
		glEnd();
#endif
		if (sprite->shadow)
		{
#ifdef WIN32
			glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
			glAlphaFunc(GL_GREATER, 0.5);
#endif
		}
	}
#ifdef WIN32
	glDisable(GL_ALPHA_TEST);
#endif
}

void ds_draw_sky(int texname, int depth, int flags) {
	float	s;
	float	y;
	int		v0;

	// Note that these texcoords would have to be corrected
	// for different screen aspect ratios or fields of view!
	s = ((yaw + 90.0f) / 90.0f) * 256;
	//y = -20;//(1.0f - 2 * 128.0 / 200)*32;
	//v0 = (int)(20.0*192*0.5/32.0);
	y = -32;//(1.0f - 2 * 128.0 / 200)*32;
	v0 = 28;//(int)(100 - 192*0.5);
	y = -depth;//(1.0f - 2 * 128.0 / 200)*32;
	v0 = 0.875*depth;//(int)(100 - 192*0.5);

#ifdef ARM9
	// With identity matricies, the vertex coordinates
	// can just be in the 0-1 range.
	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	MATRIX_LOAD4x4 = inttof32(1);
	MATRIX_LOAD4x4 = 0;
	MATRIX_LOAD4x4 = 0;
	MATRIX_LOAD4x4 = 0;

	MATRIX_LOAD4x4 = 0;
	MATRIX_LOAD4x4 = inttof32(1);
	MATRIX_LOAD4x4 = 0;
	MATRIX_LOAD4x4 = 0;

	MATRIX_LOAD4x4 = 0;
	MATRIX_LOAD4x4 = 0;
	MATRIX_LOAD4x4 = inttof32(1);
	MATRIX_LOAD4x4 = 0;

	MATRIX_LOAD4x4 = 0;
	MATRIX_LOAD4x4 = 0;
	MATRIX_LOAD4x4 = 0;
	MATRIX_LOAD4x4 = depth;//32;

	glMatrixMode(GL_PROJECTION);
	glPushMatrix();
	glLoadIdentity();

	GFX_TEX_FORMAT = texname;
	glPolyFmt(flags);//POLY_ALPHA(30) | POLY_CULL_NONE | POLY_ID(1));
	//glPolyFmt(POLY_ALPHA(31) | POLY_CULL_NONE | POLY_ID(1));

	GFX_COLOR = RGB5(31, 31, 31);
	//glBegin(GL_TRIANGLE_STRIP);
	//dsTexCoord2f( s, textures_ds[skytexture].height ); dsVertex3f(-32,y,31);
	//dsTexCoord2f( s, 0 ); dsVertex3f(-32,32,31);
	//dsTexCoord2f( s+256, textures_ds[skytexture].height ); dsVertex3f(32,y,31);
	//dsTexCoord2f( s+256, 0 ); dsVertex3f(32,32,31);
	//glEnd();
	glBegin(GL_QUADS);
	//dsTexCoord2f( s, textures_ds[skytexture].height + v0 ); dsVertex3f(-32,y,31);
	dsTexCoord2f(s, SCREEN_HEIGHT + v0); dsVertex3f(-depth, y, depth - 1);
	dsTexCoord2f(s, v0); dsVertex3f(-depth, depth, depth - 1);
	dsTexCoord2f(s + 256, v0); dsVertex3f(depth, depth, depth - 1);
	//dsTexCoord2f( s+256, textures_ds[skytexture].height + v0 ); dsVertex3f(32,y,31);
	dsTexCoord2f(s + 256, SCREEN_HEIGHT + v0); dsVertex3f(depth, y, depth - 1);
	glEnd();

	// back to the normal drawing matrix
	glPopMatrix(1);
	glMatrixMode(GL_MODELVIEW);
	glPopMatrix(1);
#endif
}
void ds_print_blocks();
long long ds_time() {
	return GetTicks();
}

extern boolean rendering_stats;
extern int(*I_GetTime)(void);

void IR_ShowStats(void)
{
#define KEEPTIMES 10
	static int keeptime[KEEPTIMES], showtime;
	int now = I_GetTime();

	if (now - showtime > 35) {
		doom_printf("Frame rate %d fps",
			(35 * KEEPTIMES) / (now - keeptime[0]));
		showtime = now;
	}
	memmove(keeptime, keeptime + 1, sizeof(keeptime[0]) * (KEEPTIMES - 1));
	keeptime[KEEPTIMES - 1] = now;
}


/*
========================
=
= R_DrawPSprite
=
========================
*/

int PSpriteSY[NUMWEAPONS] =
{
	0,				// staff
	13 * FRACUNIT,		// goldwand
	31 * FRACUNIT,	// crossbow
	31 * FRACUNIT,	// blaster
	31 * FRACUNIT,	// skullrod
	31 * FRACUNIT,	// phoenix rod
	31 * FRACUNIT,	// mace
	31 * FRACUNIT,	// gauntlets
	31 * FRACUNIT		// beak
};

extern fixed_t		pspritescale, pspriteiscale;
extern int				centerx, centery;
#define	DSBASEYCENTER			(192/2)

void IR_DrawPSprite(pspdef_t *psp)
{
	fixed_t		tx;
	int			x1, x2;
	spritedef_t	*sprdef;
	spriteframe_t	*sprframe;
	int			lump;
	boolean		flip;
	//vissprite_t	*vis, avis;

	int tempangle;

	int name;
	int v_texturemid, v_x1, v_x2, v_flip, v_y1, v_y2, h;
	int v_vt, v_vb, v_ul, v_ur;
	dstex_t *ds;
	float scale;

	//
	// decide which patch to use
	//
#ifdef RANGECHECK
	if ((unsigned)psp->state->sprite >= numsprites)
		I_Error("R_ProjectSprite: invalid sprite number %i "
		, psp->state->sprite);
#endif
	sprdef = &sprites[psp->state->sprite];
#ifdef RANGECHECK
	if ((psp->state->frame & FF_FRAMEMASK) >= sprdef->numframes)
		I_Error("R_ProjectSprite: invalid sprite frame %i : %i "
		, psp->state->sprite, psp->state->frame);
#endif
	sprframe = &sprdef->spriteframes[psp->state->frame & FF_FRAMEMASK];

	lump = sprframe->lump[0];
	flip = (boolean)sprframe->flip[0];

	//
	// calculate edges of the shape
	//
	tx = psp->sx - 160 * FRACUNIT;
	//printf("tx: %x\n",tx);

	tx -= spriteoffset[lump];
	if (viewangleoffset)
	{
		tempangle = ((centerxfrac / 1024)*(viewangleoffset >> ANGLETOFINESHIFT));
	}
	else
	{
		tempangle = 0;
	}
	x1 = (centerxfrac + FixedMul(tx, pspritescale) + tempangle) >> FRACBITS;
	if (x1 > viewwidth)
		return;		// off the right side
	//tx +=  spritewidth[lump];
	//x2 = ((centerxfrac + FixedMul (tx, pspritescale)+tempangle ) >>FRACBITS) - 1;
	x2 = x1 + (FixedMul(pspritescale, spritewidth[lump]) >> FRACBITS);
	if (x2 < 0)
		return;		// off the left side

	ds = &sprites_ds[lump];
	v_texturemid = (BASEYCENTER << FRACBITS) + FRACUNIT / 2 - (psp->sy - spritetopoffset[lump]);
	//printf("v_texturemid: %f\n",(float)(v_texturemid/65536.0));
	//v_texturemid -= (8<<FRACBITS);
	if (viewheight != SCREEN_HEIGHT)
	{
		v_texturemid -= PSpriteSY[players[consoleplayer].readyweapon];
	}

	v_x1 = x1 < 0 ? 0 : x1;
	v_x2 = x2 >= viewwidth ? viewwidth - 1 : x2;
	scale = ((float)pspritescale / (float)FRACUNIT);
	//v_y1=viewwindowy+centery-(int)(((float)v_texturemid/(float)FRACUNIT)*scale);
	v_y1 = viewwindowy + centery - (int)(((float)v_texturemid / (float)FRACUNIT)*scale);
	h = spriteheight[lump] >> FRACBITS;
	v_y2 = v_y1 + (int)((float)h*scale) + 1;

	v_vt = 0;
	v_vb = (ds->height);
	if (flip)
	{
		v_ul = (ds->width);
		v_ur = 0;
	}
	else
	{
		v_ul = 0;
		v_ur = (ds->width);
	}
	name = ds_load_sprite(lump);
#ifdef ARM9
	GFX_TEX_FORMAT = name;
	glPolyFmt(POLY_ALPHA(30) | POLY_CULL_NONE | POLY_ID(56));

	GFX_COLOR = RGB5(31, 31, 31);
	glBegin(GL_QUAD);

	//dsTexCoord2f( v_ul, v_vt ); dsVertex3f(v_x1,v_y1,0);
	//dsTexCoord2f( v_ul, v_vb ); dsVertex3f(v_x1,v_y2,0);
	//dsTexCoord2f( v_ur, v_vt ); dsVertex3f(v_x2,v_y1,0);
	//dsTexCoord2f( v_ur, v_vb); dsVertex3f(v_x2,v_y2,0);

	dsTexCoord2f(v_ul, v_vt); dsVertex3f(v_x1, v_y1, 0);
	dsTexCoord2f(v_ul, v_vb); dsVertex3f(v_x1, v_y2, 0);
	dsTexCoord2f(v_ur, v_vb); dsVertex3f(v_x2, v_y2, 0);
	dsTexCoord2f(v_ur, v_vt); dsVertex3f(v_x2, v_y1, 0);
	glEnd();
#endif
}

/*
========================
=
= R_DrawPlayerSprites
=
========================
*/

void IR_DrawPlayerSprites(void)
{
	int			i, lightnum;
	pspdef_t	*psp;
	/*
	//
	// get light level
	//
	lightnum = (viewplayer->mo->subsector->sector->lightlevel >> LIGHTSEGSHIFT)
	+extralight;
	if (lightnum < 0)
	spritelights = scalelight[0];
	else if (lightnum >= LIGHTLEVELS)
	spritelights = scalelight[LIGHTLEVELS-1];
	else
	spritelights = scalelight[lightnum];
	//
	// clip to screen bounds
	//
	*/
#ifdef ARM9
	{
		float w = 0.01f;
		int left = 0;
		int right = SCREEN_WIDTH;//(int)(((float)SCREEN_WIDTH)/w);
		int bottom = SCREEN_HEIGHT;//(int)(((float)SCREEN_HEIGHT)/w);
		int top = 0;
		int zNear = -1 << 12;
		int zFar = 1 << 12;

		// With identity matricies, the vertex coordinates
		// can just be in the 0-1 range.
		glMatrixMode(GL_MODELVIEW);
		glPushMatrix();
		glLoadIdentity();				 // reset

		MATRIX_MULT4x4 = divf32(floattof32(2.0*w), right - left);
		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = 0;

		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = divf32(floattof32(2.0*w), top - bottom);
		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = 0;

		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = divf32(-floattof32(2.0*w), zFar - zNear);
		MATRIX_MULT4x4 = 0;

		MATRIX_MULT4x4 = -floattof32(w);//-divf32(right + left, right - left);//0;
		MATRIX_MULT4x4 = floattof32(w);//-divf32(top + bottom, top - bottom); //0;
		MATRIX_MULT4x4 = -divf32(zFar + zNear, zFar - zNear);//0;
		MATRIX_MULT4x4 = floattof32(w);



		glMatrixMode(GL_PROJECTION);
		glPushMatrix();
		glLoadIdentity();

		//
		// add all active psprites
		//
		for (i = 0, psp = viewplayer->psprites; i<NUMPSPRITES; i++, psp++) {
			if (psp->state) {
				IR_DrawPSprite(psp);
			}
		}

		// back to the normal drawing matrix
		glPopMatrix(1);
		glMatrixMode(GL_MODELVIEW);
		glPopMatrix(1);
	}
#endif
#ifdef WIN32

	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(73.74, 256.0 / 192.0, 0.005, 40.0);

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	//
	// add all active psprites
	//
	for (i = 0, psp = viewplayer->psprites; i<NUMPSPRITES; i++, psp++) {
		if (psp->state) {
			IR_DrawPSprite(psp);
		}
	}

	glPopMatrix();
	glMatrixMode(GL_MODELVIEW);
	glPopMatrix();

#endif
}

#endif

typedef struct {
	void *texture;
	void *user;
} texSort_t;

static int TexSort(const void *a, const void *b) {
	if (((texSort_t *)a)->texture < ((texSort_t *)b)->texture) {
		return -1;
	}
	return 1;
}

void dsTexCoord2fv(float *st)
{
	short s, t;

	s = st[0];
	t = st[1];
	DS_TEXCOORD2T16(s, t);
}

void IR_RenderWalls(void) {
	int i, name = -1, texname, lightInt;
	//-----------------------------------------
	// draw all the walls, sky walls sorted first
	//-----------------------------------------
	// sort the walls by texture
	texSort_t	*wallSort = (texSort_t	*)alloca(sizeof(wallSort[0]) * num_gl_walls);
	for (i = 0; i < num_gl_walls; i++) {
		GLWall *wall = &gl_walls[i];
		wallSort[i].texture = (void *)wall->name;
		wallSort[i].user = wall;
	}
	qsort(wallSort, num_gl_walls, sizeof(wallSort[0]), TexSort);
	for (i = 0; i<num_gl_walls; i++) {
		texSort_t *sort = &wallSort[i];
		GLWall *wall = (GLWall *)sort->user;
		//GLWall *wall = &gl_walls[i];

		float st[2];
		fixed_t xyz[3];

		if (wall->name != name) {
			name = wall->name;
			if (name == skytexture) {
				texname = 0;// ds_load_map_texture(name, TEXGEN_TEXCOORD);//0;//ds_load_blank_tex();
			}
			else {
				texname = ds_load_map_texture(name, TEXGEN_TEXCOORD);
			}
#ifdef ARM9
			//if(texname)
			GFX_TEX_FORMAT = texname;
			if (name == skytexture) {
				glPolyFmt(POLY_ALPHA(30) | POLY_CULL_NONE | POLY_ID(2) | BIT(13));
			}
			else {
				glPolyFmt(POLY_ALPHA(31) | POLY_CULL_NONE | POLY_ID(ds_anti_alias_id) | BIT(13) | POLY_FOG);
			}
			ds_anti_alias_id++;
			ds_anti_alias_id &= (63);
			//printf("tex: %d\n",texname);
#endif
		}


#ifdef ARM9
		glBegin(GL_QUADS);
		st[0] = wall->ul;
		st[1] = wall->vt;
		xyz[0] = -MAP_COORD(wall->side->sideSeg.v1->x);
		xyz[1] = wall->ytop;
		xyz[2] = MAP_COORD(wall->side->sideSeg.v1->y);
		lightInt = (name == skytexture ? 21 : FadedLighting(xyz[0], xyz[2], wall->light));
		//DS_COLOR(RGB15(lightInt,name == skytexture ? 0 : lightInt,name == skytexture ? 0 : lightInt));
		DS_COLOR(RGB15(lightInt, lightInt, lightInt));
		dsTexCoord2fv(st);
		//dsVertex3fv(xyz);
		//DS_TEXCOORD2T16(t[0],t[1]);
		DS_VERTEX3V16(xyz[0], xyz[1], xyz[2]);


		st[0] = wall->ul;
		st[1] = wall->vb;
		xyz[0] = -MAP_COORD(wall->side->sideSeg.v1->x);
		xyz[1] = wall->ybottom;
		xyz[2] = MAP_COORD(wall->side->sideSeg.v1->y);
		dsTexCoord2fv(st);
		//dsVertex3fv(xyz);
		//DS_TEXCOORD2T16(t[0],t[1]);
		DS_VERTEX3V16(xyz[0], xyz[1], xyz[2]);

		st[0] = wall->ur;
		st[1] = wall->vb;
		xyz[0] = -MAP_COORD(wall->side->sideSeg.v2->x);
		xyz[1] = wall->ybottom;
		xyz[2] = MAP_COORD(wall->side->sideSeg.v2->y);
		lightInt = (name == skytexture ? 21 : FadedLighting(xyz[0], xyz[2], wall->light));
		DS_COLOR(RGB15(lightInt, lightInt, lightInt));
		dsTexCoord2fv(st);
		//dsVertex3fv(xyz);
		//DS_TEXCOORD2T16(t[0],t[1]);
		DS_VERTEX3V16(xyz[0], xyz[1], xyz[2]);

		st[0] = wall->ur;
		st[1] = wall->vt;
		xyz[0] = -MAP_COORD(wall->side->sideSeg.v2->x);
		xyz[1] = wall->ytop;
		xyz[2] = MAP_COORD(wall->side->sideSeg.v2->y);
		dsTexCoord2fv(st);
		//dsVertex3fv(xyz);
		//DS_TEXCOORD2T16(t[0],t[1]);
		DS_VERTEX3V16(xyz[0], xyz[1], xyz[2]);
		glEnd();
#endif

	}
}
boolean TransformAndClipSegment3(fixed_t v[2][2], fixed_t ends[2]) {
	fixed_t	clipf[2][4];
	//fixed_t endsf[2];

	fixed_t	*v0, *v1;
	fixed_t	d0f, d1f;
	fixed_t nearClipf;
	int		i;

	int x0, w0;
	int x1, w1;
	//double xyz[2][3];

	v0 = v[0];
	v1 = v[1];

	PosTest((short)v0[0], 0, (short)v0[1]);
	x0 = PosTestXresult();
	w0 = PosTestWresult();
	clipf[0][0] = (x0) << 4;
	clipf[0][3] = (w0) << 4;

	PosTest((short)v1[0], 0, (short)v1[1]);
	x1 = PosTestXresult();
	w1 = PosTestWresult();
	clipf[1][0] = (x1) << 4;
	clipf[1][3] = (w1) << 4;

	//printf("%f %f %f\n",clip[0][0],clip[0][3],clip[0][0]/clip[0][3]);
	//printf("%f %f %f\n",clip[1][0],clip[1][3],clip[1][0]/clip[1][3]);
	//waitforit2();
	/*gluProject(v[0][0],0.0,v[0][1],
	glMVPmatrixd,glPJPmatrixd,glView,
	&xyz[0][0],&xyz[0][1],&xyz[0][2]);
	gluProject(v[1][0],0.0,v[1][1],
	glMVPmatrixd,glPJPmatrixd,glView,
	&xyz[1][0],&xyz[1][1],&xyz[1][2]);*/

	// clip to the near plane
	nearClipf = 13;//328;//0.0002f;
	d0f = clipf[0][3] - nearClipf;
	d1f = clipf[1][3] - nearClipf;
	if (d0f < 0 && d1f < 0) {
		// near clipped
		return false;
	}
	if (d0f < 0) {
		int64 ff = __div64_fixed(d0f, (d0f - d1f));
		clipf[0][0] = clipf[0][0] + (fixed_t)((ff * (int64)(clipf[1][0] - clipf[0][0])) >> 16);
		clipf[0][3] = nearClipf;
	}
	else if (d1f < 0) {
		int64 ff = __div64_fixed(d1f, (d1f - d0f));
		clipf[1][0] = clipf[1][0] + (fixed_t)((ff * (int64)(clipf[0][0] - clipf[1][0])) >> 16);
		clipf[1][3] = nearClipf;
	}

	if (clipf[0][0] > clipf[0][3]) {
		// entire segment is off the right side of the screen
		return false;
	}
	if (clipf[1][0] < -clipf[1][3]) {
		// entire segment is off the left side of the screen
		return false;
	}

	// project
	for (i = 0; i < 2; i++) {
		int64 xf = __div64_fixed(clipf[i][0], clipf[i][3]);
		xf = (xf >> 1) + (1 << 15);
		//fixed_t xf = viewwidth * ( ( FixedDiv(clip[i][0], clip[i][3] )>>1  )  + (1<<15) );
		xf = (xf * viewwidth);//>>16;
		if (xf < 0) {
			xf = 0;
		}
		else if (xf > viewwidthf) {
			xf = viewwidthf;
		}
		ends[i] = xf;
	}

	//printf("ends: %f %f\n",ends[0],ends[1]);
	//printf("endsf: %d %d\n",endsf[0],endsf[1]);
	//while(1);
	//waitforit2();
	// part of the segment is on screen
	return true;
}
void IR_Subsector(int num)
{
	int i;
	int checkMin;
	int checkMax;
	int lightlevel;
	subsector_t *sub = &subsectors[num];
	sector_t *frontsector;
	mobj_t *thing;

	c_subsectors++;
	// at this point we know that at least part of the subsector is
	// not covered in the occlusion array

	// if the sector that this subsector is a part of has not already had its
	// planes and sprites added, add them now.
	frontsector = sub->sector;
	lightlevel = frontsector->lightlevel + (extralight << 5);

	/*sectorPlanes[numSectorPlanes].texture = flattranslation[frontsector->floorpic];//tex;
	sectorPlanes[numSectorPlanes].ceiling = false;
	//sectorPlanes[numSectorPlanes].sector = frontsector;
	sectorPlanes[numSectorPlanes].sub = sub;
	numSectorPlanes++;
	return;*/
	// There can be several subsectors in each sector due to non-convex
	// sectors or BSP splits, but we draw the floors, ceilings and lines
	// with a single draw call for the entire thing, so ensure that they
	// are only added once per frame.
	if (frontsector->validcount != validcount) {
		frontsector->validcount = validcount;

		c_sectors++;
		/*GLFlat flat;
		flat.sectornum = frontsector->iSectorID;
		flat.light = lightlevel;
		flat.uoffs= 0;	// no support in standard doom
		flat.voffs= 0;*/

		if (frontsector->floorheight < viewz) {
			if (frontsector->floorpic == skyflatnum) {
				skyIsVisible = true;
			}
			else {
				// get the texture. flattranslation is maintained by doom and
				// contains the number of the current animation frame
				//GLTexture *tex = gld_RegisterFlat(flattranslation[frontsector->floorpic], true);
				//if ( tex ) {
				sectorPlanes[numSectorPlanes].texture = flattranslation[frontsector->floorpic];//tex;
				sectorPlanes[numSectorPlanes].ceiling = false;
				sectorPlanes[numSectorPlanes].sector = frontsector;
				//sectorPlanes[numSectorPlanes].sub = sub;
				numSectorPlanes++;
				//}
			}
		}
		if (frontsector->ceilingheight > viewz) {
			if (frontsector->ceilingpic == skyflatnum) {
				skyIsVisible = true;
			}
			else {
				// get the texture. flattranslation is maintained by doom and
				// contains the number of the current animation frame
				//GLTexture *tex = gld_RegisterFlat(flattranslation[frontsector->ceilingpic], true);
				//if ( tex ) {
				sectorPlanes[numSectorPlanes].texture = flattranslation[frontsector->ceilingpic];//tex;
				sectorPlanes[numSectorPlanes].ceiling = true;
				sectorPlanes[numSectorPlanes].sector = frontsector;
				//sectorPlanes[numSectorPlanes].sub = sub;
				numSectorPlanes++;
				//}
			}
		}

		// Add all the sprites in this sector.
		// It would be better if they were linked into all the subsectors, because
		// we could do more accurate occlusion culling.  With non-convex sectors,
		// occasionally a sprite will be added in a rear portion of the sector that
		// would have been occluded away if everything was done in BSP subsector order.
		for (thing = frontsector->thinglist; thing; thing = thing->snext) {
			//printf("+%d ",thing->sprite);
			IR_ProjectSprite(thing, lightlevel);
		}
	}

	// If a segment in this subsector is not fully occluded, mark
	// the line that it is a part of as needing to be drawn.  Because
	// we are using a depth buffer, we can draw complete line segments
	// instead of just segments.
	for (i = 0; i < sub->numlines; i++) {
		fixed_t	v[2][2];
		fixed_t	floatEnds[2];
		seg_t *seg = &segs[sub->firstline + i];

		line_t *line = seg->linedef;

		// Determine if it will completely occlude farther objects.
		// Given that changing sector heights is much less common than
		// traversing lines during every render, it would be marginally better if
		// lines had an "occluder" flag on them that was updated as sectors
		// moved, but it hardly matters.
		boolean	occluder;
		if (seg->backsector == 0 ||
			seg->backsector->floorheight >= seg->backsector->ceilingheight ||
			seg->backsector->floorheight >= seg->frontsector->ceilingheight ||
			seg->backsector->ceilingheight <= seg->frontsector->floorheight) {
			// this segment can't be seen past, so fill in the occlusion table
			occluder = true;
		}
		else {
			// If the line has already been made visible and we don't need to
			// update the occlusion buffer, we don't need to do anything else here.
			// This happens when a line is split into multiple segs, and also
			// when the line is reached from the backsector.  In the backsector
			// case, it would be back-face culled, but this test throws it out
			// without having to transform and clip the ends.
			if (line->validcount == validcount) {
				continue;
			}

			// check to see if the seg won't draw any walls at all

			// we won't fill in the occlusion table for this
			occluder = false;
		}

		//xyz[0] = -MAP_COORD(wall->side->sideSeg.v1->x);
		//xyz[1] = wall->ytop;
		//xyz[2] = MAP_COORD(wall->side->sideSeg.v1->y);
		// transform and clip the two endpoints
		v[0][0] = -MAP_COORD(seg->v1->x);
		v[0][1] = MAP_COORD(seg->v1->y);
		v[1][0] = -MAP_COORD(seg->v2->x);
		v[1][1] = MAP_COORD(seg->v2->y);
#if 1
		if (!TransformAndClipSegment3(v, floatEnds)) {
			// the line is off to the side or facing away
			continue;
		}

		// Allow segs that we consider to be slightly back
		// facing to still pass through, because GPU floating
		// point calculations may not see them exactly the same.
		if (floatEnds[0] > floatEnds[1] + (3 << 15)) {
			// back face
			continue;
		}
		// Check it against the occlusion buffer.
		// Because the perspective divide is not going to be bit-exact between
		// the CPU and GPU, we check an extra column here.  That will result
		// in an occasional line being drawn that might not need to be, but
		// it avoids missing columns.
		checkMin = F_FLOOR(floatEnds[0]) - 1;
		checkMax = F_CEIL(floatEnds[1]) + 1;
		if (checkMin < 0) {
			checkMin = 0;
		}
		if (checkMax > viewwidth) {
			checkMax = viewwidth;
		}
		if (!memchr(occlusion + checkMin, 0, checkMax - checkMin)) {
			failCount++;
			// every column it would touch is already solid, so it isn't visible
			continue;
		}
		if (occluder) {
			// It is important to update the occlusion array as individual
			// segs are processed to maintain pure front to back order.  If
			// the occlusion buffer was updated by complete lines, it would
			// result in some elements being incorrectly occlusion culled.

			// Use a consistant fill rule for the occlusion, which is only
			// referenced by the CPU, and should be water tight.
			int fillMin = F_CEIL(floatEnds[0]);
			int fillMax = F_CEIL(floatEnds[1]);
			if (fillMax > fillMin) {
				int cc = (int)(seg - segs);
				cc &= 0x000000ff;
				memset(occlusion + fillMin, 1, fillMax - fillMin);
			}
		}

#endif
		if (line->validcount == validcount) {
			continue;
		}
		line->validcount = validcount;

		// this line can show up on the automap now
		line->flags |= ML_MAPPED;

		// Adding a line may generate up to four drawn walls -- a top wall,
		// a bottom wall, a perforated middle wall, and a sky wall.
		// Use the complete, unclipped segment for the side
		floatEnds[0] >>= 16;
		floatEnds[1] >>= 16;
		IR_AddWall(&seg->sidedef->sideSeg, floatEnds);
	}
}

static const int checkcoord[12][4] = // killough -- static const
{
	{ 3, 0, 2, 1 },
	{ 3, 0, 2, 0 },
	{ 3, 1, 2, 0 },
	{ 0 },
	{ 2, 0, 2, 1 },
	{ 0, 0, 0, 0 },
	{ 3, 1, 3, 0 },
	{ 0 },
	{ 2, 0, 3, 1 },
	{ 2, 1, 3, 1 },
	{ 2, 1, 3, 0 }
};

#ifdef ARM9
static boolean IR_IsBBoxCompletelyOccluded(const fixed_t *bspcoord) {
	int boxpos;
	const int *check;
	fixed_t	v[2][2];
	fixed_t	ends[2];

	//return false;
	// conservatively accept if close to the box, so
	// we don't need to worry about the near clip plane
	// in TrnasformAndClipSegment.  Mapscale is 128*fracunit
	// and nearclip is 0.1, so accepting 2 fracunits away works.
	if (viewx > bspcoord[BOXLEFT] - 2 * FRACUNIT && viewx < bspcoord[BOXRIGHT] + 2 * FRACUNIT
		&& viewy > bspcoord[BOXBOTTOM] - 2 * FRACUNIT && viewy < bspcoord[BOXTOP] + 2 * FRACUNIT) {
		return false;
	}

	// Find the corners of the box
	// that define the edges from current viewpoint.
	boxpos = (viewx <= bspcoord[BOXLEFT] ? 0 : viewx < bspcoord[BOXRIGHT] ? 1 : 2) +
		(viewy >= bspcoord[BOXTOP] ? 0 : viewy > bspcoord[BOXBOTTOM] ? 4 : 8);

	check = checkcoord[boxpos];

	v[0][0] = -MAP_COORD(bspcoord[check[0]]);
	v[0][1] = MAP_COORD(bspcoord[check[1]]);

	v[1][0] = -MAP_COORD(bspcoord[check[2]]);
	v[1][1] = MAP_COORD(bspcoord[check[3]]);

	if (!TransformAndClipSegment3(v, ends)) {
		// the line is off to the side or facing away
		return true;
	}

	if (ends[0] >= ends[1]) {
		return true;
	}

	//assert( ends[0] >= 0 );
	//assert( ends[1] <= viewwidth );

	// Check it against the occlusion buffer, with an extra column
	// of slop to account for GPU / CPU floating point differences.
	if (!memchr(occlusion + F_FLOOR(ends[0]), 0, F_FLOOR(ends[1]) - F_FLOOR(ends[0]) + 1)) {
		// every column it would touch is already solid, so it isn't visible
		return true;
	}
	// there are gaps, so we may need to draw something
	return false;
}
#else
static boolean IR_IsBBoxCompletelyOccluded(const fixed_t *bspcoord) {
	int boxpos;
	const int *check;
	float	v[2][2];
	float	ends[2];

	//return false;
	// conservatively accept if close to the box, so
	// we don't need to worry about the near clip plane
	// in TrnasformAndClipSegment.  Mapscale is 128*fracunit
	// and nearclip is 0.1, so accepting 2 fracunits away works.
	if (viewx > bspcoord[BOXLEFT] - 2 * FRACUNIT && viewx < bspcoord[BOXRIGHT] + 2 * FRACUNIT
		&& viewy > bspcoord[BOXBOTTOM] - 2 * FRACUNIT && viewy < bspcoord[BOXTOP] + 2 * FRACUNIT) {
		return false;
	}

	// Find the corners of the box
	// that define the edges from current viewpoint.
	boxpos = (viewx <= bspcoord[BOXLEFT] ? 0 : viewx < bspcoord[BOXRIGHT] ? 1 : 2) +
		(viewy >= bspcoord[BOXTOP] ? 0 : viewy > bspcoord[BOXBOTTOM] ? 4 : 8);

	check = checkcoord[boxpos];

	v[0][0] = -MAP_COORD(bspcoord[check[0]]);
	v[0][1] = MAP_COORD(bspcoord[check[1]]);

	v[1][0] = -MAP_COORD(bspcoord[check[2]]);
	v[1][1] = MAP_COORD(bspcoord[check[3]]);

	if (!TransformAndClipSegment(v, ends)) {
		// the line is off to the side or facing away
		return true;
	}

	if (ends[0] >= ends[1]) {
		return true;
	}

	//assert( ends[0] >= 0 );
	//assert( ends[1] <= viewwidth );

	// Check it against the occlusion buffer, with an extra column
	// of slop to account for GPU / CPU floating point differences.
	if (!memchr(occlusion + (int)ends[0], 0, (int)ends[1] - (int)ends[0] + 1)) {
		// every column it would touch is already solid, so it isn't visible
		return true;
	}
	// there are gaps, so we may need to draw something
	return false;
}
#endif
/*
RenderBSPNode

Renders all subsectors below a given node,
traversing subtree recursively.
Because this function is recursive, avoid doing work that
would give a large stack frame.  Important that the compiler
doesn't inline big functions.
*/
static void IR_RenderBSPNode(int bspnum) {
	while (!(bspnum & NF_SUBSECTOR)) {
		// decision node
		const node_t *bsp = &nodes[bspnum];

		// Decide which side the view point is on.
		int side = IR_PointOnSide(viewx, viewy, bsp);

		// check the front space
		if (!IR_IsBBoxCompletelyOccluded(bsp->bbox[side])) {
			IR_RenderBSPNode(bsp->children[side]);
		}
		// continue down the back space
		if (IR_IsBBoxCompletelyOccluded(bsp->bbox[side ^ 1])) {
			return;
		}
		bspnum = bsp->children[side ^ 1];
	}

	// subsector with contents
	// add all the drawable elements in the subsector
	if (bspnum == -1) {
		bspnum = 0;
	}
	bspnum &= ~NF_SUBSECTOR;
	IR_Subsector(bspnum);
}

void IR_RenderSectors() {
	int i;
	int last_name = -1;

	// sort the flats by texture
	qsort(sectorPlanes, numSectorPlanes, sizeof(sectorPlanes[0]), TexSort);
	//printf("cnt: %d\n", numSectorPlanes);


	// draw them in texture order
	for (i = 0; i < numSectorPlanes; i++) {
		sortSectorPlane_t *sort = &sectorPlanes[i];
		sector_t *sector = sort->sector;
		int count, j;
		winding_t *floor = sector->windings;
		fixed_t dist;
		fixed_t p[3];
		fixed_t p1[3];
		fixed_t p2[3];
		short t[2];
		short t1[2];
		short t2[2];
		int color[3];
		int texmin[2];
		//unsigned l = ((((unsigned)floor)>>2)&0xff);

		//ds_triangles += ((count-2)*2);
		int name;
		int light = sector->lightlevel + (extralight << 5);
		if (floor == 0)
			continue;
		if (light > 255) {
			light = 255;
		}
		if (light < 0)
			light = 0;
		//light *= (1.0f/255.0f);
		if (sort->texture != last_name) {
			name = ds_load_map_flat(sort->texture);
			last_name = sort->texture;
#ifdef ARM9
			glPolyFmt(POLY_ALPHA(31) | POLY_CULL_NONE | POLY_ID(ds_anti_alias_id) | BIT(13) | POLY_FOG);
			ds_anti_alias_id++;
			ds_anti_alias_id &= (63);
			//if(texname)
			GFX_TEX_FORMAT = name;
			//printf("tex: %d\n",texname);
#endif
		}

		dist = MAP_COORD(sort->ceiling == 0 ? sector->floorheight : sector->ceilingheight);

		while (floor)
		{
			count = floor->numpoints;
			texmin[0] = floor->texmin[0];
			texmin[1] = floor->texmin[1];

			p[0] = -MAP_COORD(floor->p[0].x);
			p[2] = MAP_COORD(floor->p[0].y);
			p[1] = dist;
			color[0] = FadedLighting(p[0], p[2], light);
			t[0] = (-floor->p[0].x >> 16) + texmin[0];
			t[1] = (floor->p[0].y >> 16) - texmin[1];

			p1[0] = -MAP_COORD(floor->p[1].x);
			p1[2] = MAP_COORD(floor->p[1].y);
			p1[1] = dist;
			color[1] = FadedLighting(p1[0], p1[2], light);
			t1[0] = (-floor->p[1].x >> 16) + texmin[0];
			t1[1] = (floor->p[1].y >> 16) - texmin[1];

			glBegin(GL_TRIANGLES);
			for (j = 2; j < count; j++)
			{
				p2[0] = -MAP_COORD(floor->p[j].x);
				p2[2] = MAP_COORD(floor->p[j].y);
				p2[1] = dist;
				color[2] = FadedLighting(p2[0], p2[2], light);
				t2[0] = (-floor->p[j].x >> 16) + texmin[0];
				t2[1] = (floor->p[j].y >> 16) - texmin[1];

				DS_COLOR(RGB5(color[0], color[0], color[0]));
				DS_TEXCOORD2T16(t[0], t[1]);
				DS_VERTEX3V16(p[0], p[1], p[2]);

				DS_COLOR(RGB5(color[1], color[1], color[1]));
				DS_TEXCOORD2T16(t1[0], t1[1]);
				DS_VERTEX3V16(p1[0], p1[1], p1[2]);

				DS_COLOR(RGB5(color[2], color[2], color[2]));
				DS_TEXCOORD2T16(t2[0], t2[1]);
				DS_VERTEX3V16(p2[0], p2[1], p2[2]);

				p1[0] = p2[0];
				p1[1] = p2[1];
				p1[2] = p2[2];
				t1[0] = t2[0];
				t1[1] = t2[1];
				color[1] = color[2];
			}
			glEnd();
			floor = floor->next;
		}
	}
}

void IR_RenderSprites(player_t* player)
{
	GLSprite *sprite;
	int i, k, name;
	// get the screen space vector for sprites
	fixed_t yawsin = -finesine[(ANG270 - viewangle) >> ANGLETOFINESHIFT];
	fixed_t yawcos = -finecosine[(ANG270 - viewangle) >> ANGLETOFINESHIFT];

	int x1, x2, y1, y2, z1, z2;

	//iprintf("\n\nnum_gl_sprites: %d\n\n",num_gl_sprites);
	while (1)
	{
		// pick out the sprites from farthest to nearest
		fixed_t max_scale = INT_MAX;
		k = -1;
		for (i = 0; i < num_gl_sprites; i++) {
			sprite = &gl_sprites[i];
			//printf("i: %d max: %d spr: %d\n",i,max_scale,sprite->scale);
			if (sprite->scale<max_scale)
			{
				max_scale = sprite->scale;
				k = i;
			}
		}
		if (k == -1) {
			//printf("k == -1\n");
			break;
		}

		sprite = &gl_sprites[k];
		sprite->scale = INT_MAX;

		name = ds_load_sprite(sprite->name);
		GFX_TEX_FORMAT = name;
		if (sprite->shadow)
		{
			DS_COLOR(RGB5(6, 6, 6));
			glPolyFmt(POLY_ALPHA(10) | POLY_CULL_NONE | POLY_ID(1) | BIT(11) | POLY_FOG);
			ds_anti_alias_id++;
			ds_anti_alias_id &= 63;
		}
		else
		{
			int light = 31;// ((int)sprite->light) >> 3;
			if (player->fixedcolormap) {
				light = 31;	// light amp goggles
			}
			DS_COLOR(RGB15(light, light, light));
			glPolyFmt(POLY_ALPHA(31) | POLY_CULL_NONE | POLY_ID(1) | BIT(11) | POLY_FOG);
			ds_anti_alias_id++;
			ds_anti_alias_id &= 63;
		}

		x1 = sprite->x + FixedMul(sprite->x1, yawcos);
		x2 = sprite->x + FixedMul(sprite->x2, yawcos);
		y1 = sprite->y + sprite->y1;
		y2 = sprite->y + sprite->y2;
		z1 = sprite->z + FixedMul(sprite->x1, yawsin);
		z2 = sprite->z + FixedMul(sprite->x2, yawsin);

		glBegin(GL_QUADS);
		DS_TEXCOORD2T16(sprite->ul, sprite->vt);
		DS_VERTEX3V16(MAP_COORD(x1), MAP_COORD(y1), MAP_COORD(z1));

		DS_TEXCOORD2T16(sprite->ur, sprite->vt);
		DS_VERTEX3V16(MAP_COORD(x2), MAP_COORD(y1), MAP_COORD(z2));

		DS_TEXCOORD2T16(sprite->ur, sprite->vb);
		DS_VERTEX3V16(MAP_COORD(x2), MAP_COORD(y2), MAP_COORD(z2));

		DS_TEXCOORD2T16(sprite->ul, sprite->vb);
		DS_VERTEX3V16(MAP_COORD(x1), MAP_COORD(y2), MAP_COORD(z1));
		glEnd();
	}
}

/*
========================
=
= R_DrawPSprite
=
========================
*/

int PSpriteSY[NUMWEAPONS] =
{
	0,				// staff
	13 * FRACUNIT,		// goldwand
	31 * FRACUNIT,	// crossbow
	31 * FRACUNIT,	// blaster
	31 * FRACUNIT,	// skullrod
	31 * FRACUNIT,	// phoenix rod
	31 * FRACUNIT,	// mace
	31 * FRACUNIT,	// gauntlets
	31 * FRACUNIT		// beak
};

extern fixed_t		pspritescale, pspriteiscale;
extern int				centerx, centery;
#define	DSBASEYCENTER			(192/2)

void IR_DrawPSprite(pspdef_t *psp)
{
	fixed_t		tx;
	int			x1, x2;
	spritedef_t	*sprdef;
	spriteframe_t	*sprframe;
	int			lump;
	boolean		flip;
	//vissprite_t	*vis, avis;

	int tempangle;

	int name;
	int v_texturemid, v_x1, v_x2, v_flip, v_y1, v_y2, h;
	int v_vt, v_vb, v_ul, v_ur;
	dstex_t *ds;
	float scale;

	//
	// decide which patch to use
	//
#ifdef RANGECHECK
	if ((unsigned)psp->state->sprite >= numsprites)
		I_Error("R_ProjectSprite: invalid sprite number %i "
		, psp->state->sprite);
#endif
	sprdef = &sprites[psp->state->sprite];
#ifdef RANGECHECK
	if ((psp->state->frame & FF_FRAMEMASK) >= sprdef->numframes)
		I_Error("R_ProjectSprite: invalid sprite frame %i : %i "
		, psp->state->sprite, psp->state->frame);
#endif
	sprframe = &sprdef->spriteframes[psp->state->frame & FF_FRAMEMASK];

	lump = sprframe->lump[0];
	flip = (boolean)sprframe->flip[0];
	ds = ds_tex_sprite(lump + firstspritelump);

	//
	// calculate edges of the shape
	//
	tx = psp->sx - (160 << FRACBITS);
	//printf("tx: %x\n",tx);

	tx -= (ds->leftoffset << FRACBITS);
	if (viewangleoffset)
	{
		tempangle = ((centerxfrac / 1024)*(viewangleoffset >> ANGLETOFINESHIFT));
	}
	else
	{
		tempangle = 0;
	}
	x1 = (centerxfrac + FixedMul(tx, pspritescale) + tempangle) >> FRACBITS;
	if (x1 > viewwidth)
		return;		// off the right side
	//tx +=  spritewidth[lump];
	//x2 = ((centerxfrac + FixedMul (tx, pspritescale)+tempangle ) >>FRACBITS) - 1;
	x2 = x1 + ((pspritescale*ds->width) >> FRACBITS);
	if (x2 < 0)
		return;		// off the left side

	v_texturemid = (BASEYCENTER << FRACBITS) + FRACUNIT / 2 - (psp->sy - (ds->topoffset<<FRACBITS));
	//printf("v_texturemid: %f\n",(float)(v_texturemid/65536.0));
	//v_texturemid -= (8<<FRACBITS);
	if (viewheight != SCREEN_HEIGHT)
	{
		v_texturemid -= PSpriteSY[players[consoleplayer].readyweapon];
	}

	v_x1 = x1 < 0 ? 0 : x1;
	v_x2 = x2 >= viewwidth ? viewwidth - 1 : x2;
	scale = ((float)pspritescale / (float)FRACUNIT);
	//v_y1=viewwindowy+centery-(int)(((float)v_texturemid/(float)FRACUNIT)*scale);
	v_y1 = viewwindowy + centery - (int)(((float)v_texturemid / (float)FRACUNIT)*scale);
	h = ds->height;
	v_y2 = v_y1 + (int)((float)h*scale) + 1;

	v_vt = 0;
	v_vb = (ds->height);
	if (flip)
	{
		v_ul = (ds->width);
		v_ur = 0;
	}
	else
	{
		v_ul = 0;
		v_ur = (ds->width);
	}
	name = ds_load_sprite(lump);
#ifdef ARM9
	GFX_TEX_FORMAT = name;
	glPolyFmt(POLY_ALPHA(30) | POLY_CULL_NONE | POLY_ID(56));

	GFX_COLOR = RGB5(31, 31, 31);
	glBegin(GL_QUAD);

	DS_TEXCOORD2T16(v_ul, v_vt); DS_VERTEX3V16(v_x1, v_y1, 0);
	DS_TEXCOORD2T16(v_ul, v_vb); DS_VERTEX3V16(v_x1, v_y2, 0);
	DS_TEXCOORD2T16(v_ur, v_vb); DS_VERTEX3V16(v_x2, v_y2, 0);
	DS_TEXCOORD2T16(v_ur, v_vt); DS_VERTEX3V16(v_x2, v_y1, 0);
	
	glEnd();
#endif
}

/*
========================
=
= R_DrawPlayerSprites
=
========================
*/

void IR_DrawPlayerSprites(void)
{
	int			i, lightnum;
	pspdef_t	*psp;
	/*
	//
	// get light level
	//
	lightnum = (viewplayer->mo->subsector->sector->lightlevel >> LIGHTSEGSHIFT)
	+extralight;
	if (lightnum < 0)
	spritelights = scalelight[0];
	else if (lightnum >= LIGHTLEVELS)
	spritelights = scalelight[LIGHTLEVELS-1];
	else
	spritelights = scalelight[lightnum];
	//
	// clip to screen bounds
	//
	*/
#ifdef ARM9
	{
		float w = 0.01f;
		int left = 0;
		int right = SCREEN_WIDTH;//(int)(((float)SCREEN_WIDTH)/w);
		int bottom = SCREEN_HEIGHT;//(int)(((float)SCREEN_HEIGHT)/w);
		int top = 0;
		int zNear = -1 << 12;
		int zFar = 1 << 12;

		// With identity matricies, the vertex coordinates
		// can just be in the 0-1 range.
		glMatrixMode(GL_MODELVIEW);
		glPushMatrix();
		glLoadIdentity();				 // reset

		MATRIX_MULT4x4 = divf32(floattof32(2.0*w), right - left);
		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = 0;

		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = divf32(floattof32(2.0*w), top - bottom);
		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = 0;

		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = 0;
		MATRIX_MULT4x4 = divf32(-floattof32(2.0*w), zFar - zNear);
		MATRIX_MULT4x4 = 0;

		MATRIX_MULT4x4 = -floattof32(w);//-divf32(right + left, right - left);//0;
		MATRIX_MULT4x4 = floattof32(w);//-divf32(top + bottom, top - bottom); //0;
		MATRIX_MULT4x4 = -divf32(zFar + zNear, zFar - zNear);//0;
		MATRIX_MULT4x4 = floattof32(w);



		glMatrixMode(GL_PROJECTION);
		glPushMatrix();
		glLoadIdentity();

		//
		// add all active psprites
		//
		for (i = 0, psp = viewplayer->psprites; i<NUMPSPRITES; i++, psp++) {
			if (psp->state) {
				IR_DrawPSprite(psp);
			}
		}

		// back to the normal drawing matrix
		glPopMatrix(1);
		glMatrixMode(GL_MODELVIEW);
		glPopMatrix(1);
	}
#endif
}

/*
IR_RenderPlayerView

Replace the prBoom rendering code with a higher performance
version.  Most of the fancy new features are gone, because I
have no idea what the reight test cases would be for them.
*/
void IR_RenderPlayerView(player_t* player) {
	float trY;
	float xCamera, yCamera;

	//int	start = 0;
	int height;
	int i, last_name = -1;
	int texname;
#ifdef ARM9
	long long start = ds_time();
	long long s1, s2, s3, s4, s5;
#endif

	viewplayer = player;
	viewwidthf = viewwidth << 16;
	viewx = player->mo->x;
	viewy = player->mo->y;
	viewz = player->viewz;

	viewangle = player->mo->angle;
	extralight = player->extralight;	// gun flashes

	yaw = 270.0f - (float)(viewangle >> ANGLETOFINESHIFT)*360.0f / FINEANGLES;

	viewsin = finesine[viewangle >> ANGLETOFINESHIFT];
	viewcos = finecosine[viewangle >> ANGLETOFINESHIFT];

	// IR goggles
	if (player->fixedcolormap) {
		fixedcolormap = fullcolormap + player->fixedcolormap * 256 * sizeof(lighttable_t);
	}
	else {
		fixedcolormap = 0;
	}

	// this is used to tell if a line, sector, or sprite is going to be drawn this frame
	validcount++;
	r_framecount++;

	// clear the 1D occlusion buffer, set a final guard column to occluded so we can
	// check an extra pixel to account for slight floating point differences between
	// the GPU and CPU transformations
	//assert( viewwidth <= DS_SCREEN_WIDTH );
	//memset( occlusion, 0, viewsize+2);//sizeof( occlusion ) );
	memset(occlusion, 0, viewwidth + 2);//sizeof( occlusion ) );
	occlusion[viewwidth] = 1;

	//gld_SetPalette(-1);

	/*if (screenblocks == 11)
	height = DS_SCREEN_HEIGHT-1;
	else if (screenblocks == 10)
	height = DS_SCREEN_HEIGHT-2;
	else
	height = (screenblocks*DS_SCREEN_HEIGHT/10) & ~7;*/

	height = viewheight;


	//glViewport(viewwindowx, DS_SCREEN_HEIGHT-(height+viewwindowy-((height-viewheight)/2)), viewwidth, height);
#ifdef WIN32
	glViewport(viewwindowx, DS_SCREEN_HEIGHT - (viewheight + viewwindowy), viewwidth, viewheight);
	glEnable(GL_DEPTH_TEST);
	glDisable(GL_FOG);
	glShadeModel(GL_SMOOTH);
	glDisable(GL_CULL_FACE);
#endif

#ifdef ARM9
	glViewport(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1);
	//glViewport(viewwindowx, SCREEN_HEIGHT - (viewheight + viewwindowy), viewwidth + viewwindowx, DS_SCREEN_HEIGHT - (viewwindowy)-1);
	glEnable(GL_ANTIALIAS);
#endif
	//glScissor(viewwindowx, DS_SCREEN_HEIGHT-(viewheight+viewwindowy), viewwidth, viewheight);
	//glEnable(GL_SCISSOR_TEST);

	// Player coordinates
	xCamera = -MAP_COORD(viewx);
	yCamera = MAP_COORD(viewy);
	trY = MAP_COORD(viewz);

	yaw = 270.0f - (float)(viewangle >> ANGLETOFINESHIFT)*360.0f / FINEANGLES;
	inv_yaw = -90.0f + (float)(viewangle >> ANGLETOFINESHIFT)*360.0f / FINEANGLES;

#ifdef WIN32
	frameBegin();
#endif


	// To make it easier to accurately mimic the GL model to screen transformation,
	// this is set up so that the projection transformation is also done in the
	// modelview matrix, leaving the projection matrix as an identity.  This means
	// that things done in eye space, like lighting and fog, won't work, but
	// we don't need them.
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
#ifdef ARM9
	gluPerspective(73.74, 256.0 / 192.0, 0.002, 1000);
#endif

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	// make the 320x480 hardware seem like 480x320 in two different orientations	
	// and note if the occlusion segmenrs need to be reversed
	//reversedLandscape = iphoneRotateForLandscape();
	//glRotatef( -90, 0, 0, 1 );
#ifdef WIN32
	infinitePerspective(64.0f, 320.0f / 200.0f, 0.005f);
	//glFrustum(-1.0*320.0f/200.0f,1.0*320.0f/200.0f,-1.0,1.0,1.0,8192.0);
#endif

	glRotateZ(roll);

	glPushMatrix();

	//glRotateX(pitch);
	glRotateY(yaw);

#ifdef WIN32
	glTranslatef(-xCamera, -trY, -yCamera);
	// read back the matrix so we can do exact calculations that match
	// what GL is doing.  It would probably be better to build the matricies
	// ourselves and just do a loadMatrix...
	glGetFloatv(GL_MODELVIEW_MATRIX, glMVPmatrix);

	glGetDoublev(GL_MODELVIEW_MATRIX, glMVPmatrixd);
	glGetDoublev(GL_PROJECTION_MATRIX, glPJPmatrixd);
	glGetIntegerv(GL_VIEWPORT, glView);

	// setup the vector for calculating light fades, which is just a scale
	// of the forward vector
	lightingVector[0] = lightDistance * glMVPmatrix[2];
	lightingVector[1] = lightDistance * glMVPmatrix[10];
	lightingVector[2] = lightDistance * glMVPmatrix[14];
	//printf("vpn: %f %f %f\n",(float)glMVPmatrix[2],(float)glMVPmatrix[10],(float)glMVPmatrix[14]);
#else
	//MATRIX_SCALE = 0x1000;
	//MATRIX_SCALE = 0x1000;
	//MATRIX_SCALE = -0x1000;
	glTranslate3f32(-(int)(xCamera), -(int)(trY), -(int)(yCamera));
	glGetFixed(GL_GET_MATRIX_CLIP, dsMat);
	lightingVector[0] = (float)dsMat[8] / 4096.0f;
	lightingVector[1] = (float)dsMat[10] / 4096.0f;
	lightingVector[2] = lightingVector[0] * -xCamera + lightingVector[1] * -yCamera;

	lightingVector[0] *= lightDistance;
	lightingVector[1] *= lightDistance;
	lightingVector[2] *= lightDistance;

	//printf("vpn: %f %f %f\n",(float)dsMat[8]/4096.0f,(float)dsMat[10]/4096.0f,(float)dsMat[11]/4096.0f);
#endif

	//printf("light: %f %f %f\n",lightingVector[0],lightingVector[1],lightingVector[2]);
	//printf("yaw: %f\n",yaw);
	//printf("pos: %f %f %f\n",(xCamera), (trY), (yCamera));
	//while(1);
	//printf("1: %f %f %f %f\n",(float)dsMat[1]/4096.0f,(float)dsMat[5]/4096.0f,(float)dsMat[9]/4096.0f,(float)dsMat[13]/4096.0f);
	//printf("2: %f %f %f %f\n",(float)dsMat[2]/4096.0f,(float)dsMat[6]/4096.0f,(float)dsMat[10]/4096.0f,(float)dsMat[14]/4096.0f);
	//for(i=0;i<16;i++) {
	//	printf("%d: %f\n",i,(float)dsMat[i]/4096.0f);
	//}
	//printf("\n");


	numSectorPlanes = 0;
	num_gl_walls = 0;
	num_gl_sprites = 0;

	c_occludedSprites = 0;
	c_sectors = 0;
	c_subsectors = 0;
	failCount = 0;

	skyIsVisible = false;

	// check for new console commands.
#ifdef HAVE_NET
	NetUpdate();
#endif

	// Find everything we need to draw, but don't draw anything yet,
	// because we want to sort by texture to reduce GL driver overhead.
	IR_RenderBSPNode(numnodes - 1);

	s1 = ds_time();

#ifdef ARM9
	glPopMatrix(1);
	glRotateX(pitch);
	glRotateY(yaw);
	glTranslate3f32(-(int)(xCamera), -(int)(trY), -(int)(yCamera));
	glGetFixed(GL_GET_MATRIX_CLIP, dsMat);


	//if (skyIsVisible) {
	//	ds_draw_sky(0, 32, POLY_ALPHA(1) | POLY_CULL_NONE | POLY_ID(1) | POLY_FOG);
	//	texname = ds_load_sky_texture(skytexture, TEXGEN_TEXCOORD);
	//	ds_draw_sky(texname, 0x7ff0, POLY_ALPHA(30) | POLY_CULL_NONE | POLY_ID(2) | BIT(13));
	//}
#endif

	// check for new console commands.
#ifdef HAVE_NET
	NetUpdate();
#endif

	glEnable(GL_TEXTURE_2D);

	IR_RenderWalls();
	s2 = ds_time();

	// check for new console commands.
#ifdef HAVE_NET
	NetUpdate();
#endif

	IR_RenderSectors();

	s3 = ds_time();

	// check for new console commands.
#ifdef HAVE_NET
	NetUpdate();
#endif

	IR_RenderSprites(player);
	s4 = ds_time();

	// check for new console commands.
#ifdef HAVE_NET
	NetUpdate();
#endif

	//if (skyIsVisible) {
	//	texname = ds_load_sky_texture(skytexture, TEXGEN_TEXCOORD);
	//	ds_draw_sky(texname, 32, POLY_ALPHA(30) | POLY_CULL_NONE | POLY_ID(1));
	//}
	IR_DrawPlayerSprites();
	s5 = ds_time();

	ds_texture_cache_load();
	glFlush(3);


	do {
		extern volatile int ds_timer_ticks;
		long long end = ds_time();
		//printf("%d %d %d %d %d %d\n", (int)(s1 - start), (int)(s2 - s1), (int)(s3 - s2), (int)(s4 - s3), (int)(s5 - s4), (int)(end - s5));
		//printf("r: %d\n", (int)(end - start));
		//printf("d: %d\n", ds_timer_ticks);
	} while (0);

	//if (rendering_stats) IR_ShowStats();

}
#endif

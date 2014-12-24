#ifndef __GEOMETRY_H__
#define __GEOMETRY_H__

#include <math.h>

#ifdef WIN32

typedef float coord_t;
#define MAP_COEFF 128.0f
#define MAP_SCALE (MAP_COEFF*(float)FRACUNIT)
#define MAP_COORD2(__x) ((float)(__x)/(float)MAP_SCALE)
#define MAP_COORD(__x) ((float)(__x)/(float)MAP_SCALE)

#else

#define MAP_SHIFT 2
#define MAP_SCALE (FRACUNIT>>MAP_SHIFT)
#define MAP_COORD2(__x) ((float)(__x)/(float)MAP_SCALE)
#define MAP_COORD(__x) ((__x)>>(FRACBITS-MAP_SHIFT))

#endif

#ifdef ARM9

#define DS_TEXCOORD2T16(x, y) GFX_TEX_COORD = TEXTURE_PACK(x, y)
#define DS_VERTEX3V16(x, y, z) GFX_VERTEX16 = (y << 16) | (x & 0xFFFF); GFX_VERTEX16 = ((unsigned int)(unsigned short)z)
#define DS_COLOR(__c) GFX_COLOR = (__c)

#endif

#ifndef _MSC_VER

#else
typedef __int64 int64_t;
typedef unsigned __int64 uint64_t;
// define compiled-specific long-long contstant notation here
#define LONGLONG(num) (uint64_t)num
#define S_ISDIR(x) (((sbuf.st_mode & S_IFDIR)==S_IFDIR)?1:0)
#endif

#ifdef __GNUC__
#define CONSTFUNC __attribute__((const))
#define PUREFUNC __attribute__((pure))
#define NORETURN __attribute__ ((noreturn))
#else
#define CONSTFUNC
#define PUREFUNC
#define NORETURN
#endif


typedef fixed_t normal_t[2];

typedef struct winding_s
{
	struct winding_s *parent;
	struct winding_s *children[2];
	struct winding_s *next;
	int			numpoints;
	float	dist;
	int		sub;
	short	texmin[2];
	vertex_t	p[1];		// variable sized
} winding_t;

extern winding_t **floors_ds;

winding_t *BaseWinding();
winding_t	*ChopWinding (winding_t *in, normal_t normal, fixed_t dist);
void	ClipWinding (winding_t *in, normal_t normal, fixed_t dist,winding_t **front, winding_t **back);
void ds_gen_floors();

#ifdef WIN32
#define STATIC_INL static __forceinline
#endif


#ifdef ARM9
#define STATIC_INL static inline
STATIC_INL
fixed_t div_f32(fixed_t num, fixed_t den)
{
	REG_DIVCNT = DIV_64_32;

	while(REG_DIVCNT & DIV_BUSY);

	REG_DIV_NUMER = ((int64)num) << 12;
	REG_DIV_DENOM_L = den;

	while(REG_DIVCNT & DIV_BUSY);

	return (fixed_t)(REG_DIV_RESULT_L);
}


STATIC_INL 
fixed_t mul_f32(fixed_t a, fixed_t b)
{
	long long result = (long long)a*(long long)b;
	return (fixed_t)(result >> 12);
}

STATIC_INL
fixed_t div_fixed(fixed_t num, fixed_t den)
{
	REG_DIVCNT = DIV_64_32;

	while(REG_DIVCNT & DIV_BUSY);

	REG_DIV_NUMER = ((int64)num) << 16;
	REG_DIV_DENOM_L = den;

	while(REG_DIVCNT & DIV_BUSY);

	return (fixed_t)(REG_DIV_RESULT_L);
}


STATIC_INL 
fixed_t mul_fixed(fixed_t a, fixed_t b)
{
	long long result = (long long)a*(long long)b;
	return (fixed_t)(result >> 16);
}

STATIC_INL 
fixed_t sqrt_fixed(fixed_t a)
{
	REG_SQRTCNT = SQRT_64;

	while(REG_SQRTCNT & SQRT_BUSY);

	REG_SQRT_PARAM = ((int64)a) << 16;

	while(REG_SQRTCNT & SQRT_BUSY);

	return (fixed_t)REG_SQRT_RESULT;
}
#else
STATIC_INL
fixed_t div_fixed(fixed_t num, fixed_t den)
{
	return (fixed_t)((((__int64)num) << 16)/den);
}


STATIC_INL 
fixed_t mul_fixed(fixed_t a, fixed_t b)
{
	__int64 result = (__int64)a*(__int64)b;
	return (fixed_t)(result >> 16);
}

STATIC_INL 
fixed_t sqrt_fixed(fixed_t a)
{
	float b = ((float)a)/65536.0;
	fixed_t c;
	b = sqrt(b);
	c = (fixed_t)((b)*(1L<<16));
	return c;
}
#endif

STATIC_INL 
fixed_t dot_fixed(fixed_t *a, fixed_t *b)
{
	return mul_fixed(a[0], b[0]) + mul_fixed(a[1], b[1]);
}

STATIC_INL 
int64_t mul_fixed64(fixed_t a, fixed_t b)
{
	int64_t result = (int64_t)a*(int64_t)b;
	return (result >> 16);
}

STATIC_INL
fixed_t div_fixed64(int64_t num, fixed_t den)
{
	return (fixed_t)(((num) << 16)/den);
}


STATIC_INL 
int64_t dot_fixed64(fixed_t *a, fixed_t *b)
{
	return mul_fixed64(a[0], b[0]) + mul_fixed64(a[1], b[1]);
}

STATIC_INL 
fixed_t sqrt_fixed64(int64_t a)
{
	double b = ((double)a)/65536.0;
	fixed_t c;
	b = sqrt(b);
	c = (fixed_t)((b)*(double)(1L<<16));
	return c;
}




STATIC_INL 
fixed_t normalize_fixed(fixed_t* a)
{
	// magnitude = sqrt ( Ax^2 + Ay^2 + Az^2 )
	int64_t dot = dot_fixed64(a,a);
	fixed_t magnitude = sqrt_fixed64( dot );
	if(magnitude == 0)
		return 0;

	a[0] = div_fixed(a[0], magnitude);
	a[1] = div_fixed(a[1], magnitude);
	return magnitude;
}

/*
STATIC_INL 
void cross_fixed(fixed_t *a, fixed_t *b, fixed_t *result)
{
	result[0] = mul_fixed(a[1], b[2]) - mul_fixed(b[1], a[2]);
	result[1] = mul_fixed(a[2], b[0]) - mul_fixed(b[2], a[0]);
	result[2] = mul_fixed(a[0], b[1]) - mul_fixed(b[0], a[1]);
}
*/
#endif
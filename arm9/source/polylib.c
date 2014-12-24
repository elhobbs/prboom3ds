#include "config.h"
#ifdef DS3D
#include "DoomDef.h"
#include "r_defs.h"
#include "r_state.h"
#include "geometry.h"

#define	BOGUS_RANGE	(30000L<<16)
#define	ON_EPSILON	(655L)
#define	ON_EPSILON2	(20L<<16)
#define	MAX_POINTS_ON_WINDING	64
#define	SIDE_FRONT		0
#define	SIDE_ON			2
#define	SIDE_BACK		1
#define	SIDE_CROSS		-2


/*
=============
AllocWinding
=============
*/
winding_t	*AllocWinding (int points)
{
	winding_t	*w;
	int			s;

	s = sizeof(winding_t) + sizeof(vertex_t)*(points-1);
	w = Z_Malloc (s,PU_LEVEL,0);//malloc (s);
	memset (w, 0, s); 
	return w;
}

/*
==================
CopyWinding
==================
*/
winding_t	*CopyWinding (winding_t *w)
{
	int			size;
	winding_t	*c;
	
	c = AllocWinding(w->numpoints);
	c->next = 0;
	c->numpoints = w->numpoints;
	c->parent = w->parent;
	c->children[0] = w->children[0];
	c->children[1] = w->children[1];
	memcpy (c->p, w->p, w->numpoints*sizeof(vertex_t));
	return c;
}

void VertexSubtract(vertex_t a,vertex_t b,vertex_t c)
{
	c.x = a.x - b.x;
	c.y = a.y - b.y;
}
void VertexAdd(vertex_t a,vertex_t b,vertex_t c)
{
	c.x = a.x + b.x;
	c.y = a.y + b.y;
}
void VertexCopy(fixed_t *a,fixed_t *b)
{
	b[0] = a[0];
	b[1] = a[1];
}
/*
=================
BaseWindingForPlane
=================
*/
winding_t *BaseWinding()
{
	winding_t	*w;
	

// project a really big	axis aligned box onto the plane
	w = AllocWinding (4);

	w->p[0].x = -(8000<<16);
	w->p[0].y = (8000<<16);
	
	w->p[1].x = (8000<<16);
	w->p[1].y = (8000<<16);
	
	w->p[2].x = (8000<<16);
	w->p[2].y = -(8000<<16);
	
	w->p[3].x = -(8000<<16);
	w->p[3].y = -(8000<<16);

	w->numpoints = 4;
	
	return w;
}

/*
=============
ClipWinding
=============
*/
void	ClipWinding2 (winding_t *in, vertex_t *v1,vertex_t *v2,winding_t **front, winding_t **back)
{
	fixed_t	dists[MAX_POINTS_ON_WINDING+4];
	int		sides[MAX_POINTS_ON_WINDING+4];
	int		counts[3];
	fixed_t	dot,dot2;
	int		i, j;
	fixed_t	*p1, *p2;
	vertex_t	mid;
	winding_t	*f, *b;
	int		n,maxpts;
	normal_t normal;
	fixed_t dist;
	normal_t normal2;
	fixed_t dist2;
	
	normal[0] = v2->y - v1->y;
	normal[1] = -(v2->x - v1->x);
	normalize_fixed(normal);
	dist = dot_fixed(normal,v2->v);

	counts[0] = counts[1] = counts[2] = 0;

	n = in->numpoints;
// determine sides for each point
	for (i=0 ; i<n ; i++)
	{
/*
		normal2[0] = in->p[(i+1)%n].y - in->p[i].y;
		normal2[1] = -(in->p[(i+1)%n].x - in->p[i].x);
		normalize_fixed(normal2);
		dist2 = dot_fixed(normal2,v2->v);

		dot = dot_fixed (v1->v, normal2);
		dot -= dist2;
		dot2 = dot_fixed (v2->v, normal2);
		dot2 -= dist2;
		if(dot <= ON_EPSILON2 && dot >= -ON_EPSILON2 &&
			dot <= ON_EPSILON2 && dot >= -ON_EPSILON2)
		{
			sides[i] = SIDE_ON;
		}
		else
		{
*/
			dot = dot_fixed (in->p[i].v, normal);
			dot -= dist;
			dists[i] = dot;
			if (dot > ON_EPSILON)
				sides[i] = SIDE_FRONT;
			else if (dot < -ON_EPSILON)
				sides[i] = SIDE_BACK;
			else
			{
				sides[i] = SIDE_ON;
			}
//		}
		counts[sides[i]]++;
	}
	sides[i] = sides[0];
	dists[i] = dists[0];
	
	*front = *back = 0;

	if (!counts[0])
	{
		*back = CopyWinding (in);
		return;
	}
	if (!counts[1])
	{
		*front = CopyWinding (in);
		return;
	}

	maxpts = in->numpoints+4;	// can't use counts[0]+2 because
								// of fp grouping errors

	*front = f = AllocWinding (maxpts);
	*back = b = AllocWinding (maxpts);
		
	for (i=0 ; i<in->numpoints ; i++)
	{
		p1 = in->p[i].v;
		
		if (sides[i] == SIDE_ON)
		{
			VertexCopy (p1, f->p[f->numpoints].v);
			f->numpoints++;
			VertexCopy (p1, b->p[b->numpoints].v);
			b->numpoints++;
			continue;
		}
	
		if (sides[i] == SIDE_FRONT)
		{
			VertexCopy (p1, f->p[f->numpoints].v);
			f->numpoints++;
		}
		if (sides[i] == SIDE_BACK)
		{
			VertexCopy (p1, b->p[b->numpoints].v);
			b->numpoints++;
		}

		if (sides[i+1] == SIDE_ON || sides[i+1] == sides[i])
			continue;
			
	// generate a split point
		p2 = in->p[(i+1)%in->numpoints].v;
		
		dot = div_fixed(dists[i],dists[i]-dists[i+1]);
		for (j=0 ; j<2 ; j++)
		{	// avoid round off error when possible
			if (normal[j] == (1L<<16))
				mid.v[j] = dist;
			else if (normal[j] == (-1L<<16))
				mid.v[j] = -dist;
			else
				mid.v[j] = p1[j] + mul_fixed(dot,(p2[j]-p1[j]));
		}
			
		VertexCopy (mid.v, f->p[f->numpoints].v);
		f->numpoints++;
		VertexCopy (mid.v, b->p[b->numpoints].v);
		b->numpoints++;
	}
	/*
	if (f->numpoints > maxpts || b->numpoints > maxpts)
		I_Error ("ClipWinding: points exceeded estimate");
	if (f->numpoints > MAX_POINTS_ON_WINDING || b->numpoints > MAX_POINTS_ON_WINDING)
		I_Error ("ClipWinding: MAX_POINTS_ON_WINDING");*/
}

/*
=============
ClipWinding
=============
*/
void	ClipWinding (winding_t *in, normal_t normal, fixed_t dist,winding_t **front, winding_t **back)
{
	fixed_t	dists[MAX_POINTS_ON_WINDING+4];
	int		sides[MAX_POINTS_ON_WINDING+4];
	int		counts[3];
	fixed_t	dot;
	int		i, j;
	fixed_t	*p1, *p2;
	vertex_t	mid;
	winding_t	*f, *b;
	int		maxpts;
	
	counts[0] = counts[1] = counts[2] = 0;

// determine sides for each point
	for (i=0 ; i<in->numpoints ; i++)
	{
		dot = dot_fixed (in->p[i].v, normal);
		dot -= dist;
		dists[i] = dot;
		if (dot > ON_EPSILON)
			sides[i] = SIDE_FRONT;
		else if (dot < -ON_EPSILON)
			sides[i] = SIDE_BACK;
		else
		{
			sides[i] = SIDE_ON;
		}
		counts[sides[i]]++;
	}
	sides[i] = sides[0];
	dists[i] = dists[0];
	
	*front = *back = NULL;

	if (!counts[0])
	{
		*back = CopyWinding (in);
		return;
	}
	if (!counts[1])
	{
		*front = CopyWinding (in);
		return;
	}

	maxpts = in->numpoints+4;	// can't use counts[0]+2 because
								// of fp grouping errors

	*front = f = AllocWinding (maxpts);
	*back = b = AllocWinding (maxpts);
		
	for (i=0 ; i<in->numpoints ; i++)
	{
		p1 = in->p[i].v;
		
		if (sides[i] == SIDE_ON)
		{
			VertexCopy (p1, f->p[f->numpoints].v);
			f->numpoints++;
			VertexCopy (p1, b->p[b->numpoints].v);
			b->numpoints++;
			continue;
		}
	
		if (sides[i] == SIDE_FRONT)
		{
			VertexCopy (p1, f->p[f->numpoints].v);
			f->numpoints++;
		}
		if (sides[i] == SIDE_BACK)
		{
			VertexCopy (p1, b->p[b->numpoints].v);
			b->numpoints++;
		}

		if (sides[i+1] == SIDE_ON || sides[i+1] == sides[i])
			continue;
			
	// generate a split point
		p2 = in->p[(i+1)%in->numpoints].v;
		
		dot = div_fixed(dists[i],dists[i]-dists[i+1]);
		for (j=0 ; j<2 ; j++)
		{	// avoid round off error when possible
			if (normal[j] == (1L<<16))
				mid.v[j] = dist;
			else if (normal[j] == (-1L<<16))
				mid.v[j] = -dist;
			else
				mid.v[j] = p1[j] + mul_fixed(dot,(p2[j]-p1[j]));
		}
			
		VertexCopy (mid.v, f->p[f->numpoints].v);
		f->numpoints++;
		VertexCopy (mid.v, b->p[b->numpoints].v);
		b->numpoints++;
	}
	/*
	if (f->numpoints > maxpts || b->numpoints > maxpts)
		I_Error ("ClipWinding: points exceeded estimate");
	if (f->numpoints > MAX_POINTS_ON_WINDING || b->numpoints > MAX_POINTS_ON_WINDING)
		I_Error ("ClipWinding: MAX_POINTS_ON_WINDING");*/
}

/*
=================
ChopWinding

Returns the fragment of in that is on the front side
of the cliping plane.  The original is freed.
=================
*/
winding_t	*ChopWinding (winding_t *in, normal_t normal, fixed_t dist)
{
	winding_t	*f, *b;

	ClipWinding (in, normal, dist, &f, &b);
	Z_Free (in);
	if (b)
		Z_Free (b);
	return f;
}

#endif
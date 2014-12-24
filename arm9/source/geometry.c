#include "config.h"
#ifdef DS3D
#include "DoomDef.h"
#include "r_defs.h"
#include "r_state.h"
#include "geometry.h"


void Sys_SendKeyEvents (void);

void draw_winding(winding_t *w);
void draw_line(vertex_t *a,vertex_t *b,float dist);
void R_RenderView();
extern int    skyflatnum;
// The sky texture to be used instead of the F_SKY1 dummy.
extern int skytexture;

winding_t	*CopyWinding (winding_t *w);

winding_t **floors_ds;
#ifdef DEBUG_FLOORS
winding_t **floors_ds2;
winding_t **floors_ds3;

vertex_t lines_ds[2][1];//20000];
int num_lines = 0;
#endif

int floor_count = 0;

int sub_count = 0;

#ifdef DEBUG_FLOORS
void add_sub_winding(winding_t * w)
{
	w->sub = -1;
	floors_ds3[sub_count++] = w;
}
#endif

void waitforit2()
{
#ifdef DEBUG_FLOORS
#ifdef WIN32
	printf("\npress space...");
	while(GetKeyState(VK_SPACE) == 0)
	{
		Sys_SendKeyEvents();
	}

 	while(GetKeyState(VK_SPACE) != 0)
	{
		Sys_SendKeyEvents();
	}
	printf("done.\n");
#endif
#ifdef ARM9

	printf("\npress A...");
	while((keysCurrent() & KEY_A) == 0)
	{
		swiWaitForVBlank();
	}
	while((keysCurrent() & KEY_A))
	{
		swiWaitForVBlank();
	}
	printf("done.\n");
#endif
#endif
}
void waitforit()
{

}

#ifdef DEBUG_FLOORS
void add_line(vertex_t a,vertex_t b)
{
	return;
	lines_ds[0][num_lines].x = a.x;
	lines_ds[0][num_lines].y = a.y;
	lines_ds[1][num_lines].x = b.x;
	lines_ds[1][num_lines].y = b.y;
	num_lines++;
}
void add_winding(winding_t *w,float dist,int sub) {
	int n;

	winding_t *c = CopyWinding(w);
	c->dist = dist;
	c->sub = sub;
	floors_ds2[floor_count++] = c;
	printf("add: %d\n",sub);
}
#endif
void normalize_plane (normal_t normal,fixed_t *dist)
{
	fixed_t	ax, ay;
	int type;
	
	if (normal[0] == (-1L<<16))
	{
		normal[0] = (1L<<16);
		*dist = -(*dist);
	}
	if (normal[1] == (-1L<<16))
	{
		normal[1] = (1L<<16);
		*dist = -(*dist);
	}

	if (normal[0] == (1L<<16))
	{
		return;
	}
	if (normal[1] == (1L<<16))
	{
		return;
	}

	ax = abs(normal[0]);
	ay = abs(normal[1]);

	if (ax >= ay)
		type = 0;
	else
		type = 1;
	if (normal[type] < 0)
	{
		normal[0] = -normal[0];
		normal[1] = -normal[1];
		*dist = -(*dist);
	}

}

#define	BOGUS_RANGE	(30000L<<16)
#define	ON_EPSILON	(6553L)
#define	MAX_POINTS_ON_WINDING	64
#define	SIDE_FRONT		0
#define	SIDE_ON			2
#define	SIDE_BACK		1
#define	SIDE_CROSS		-2

int faces_front(normal_t normal,fixed_t dist,subsector_t *sub)
{
	seg_t *line;
	int i,count;
	fixed_t dot;
	fixed_t	dists[MAX_POINTS_ON_WINDING+4];
	int		sides[MAX_POINTS_ON_WINDING+4];
	int		counts[3];

	counts[0] = counts[1] = counts[2] = 0;

	line = &segs[sub->firstline];
	count = sub->numlines;
	i = 0;

	do
	{
		dot = dot_fixed (line->v1->v, normal);
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

		i++;
		line++;
	}
	while(i < count);

	return counts[SIDE_BACK] > counts[SIDE_FRONT] ? 1 : 0;;
}

#define	ON_EPSILON2	(8L<<16)
int R_PointsOnNode (vertex_t *v1,vertex_t *v2)
{
	normal_t normal,normal2;
	fixed_t dist;
	int		side, nodenum;
	node_t *node;
	fixed_t d1,d2;


	if (!numnodes)				// single subsector is a special case
		return 0;

	nodenum = numnodes-1;

	while (! (nodenum & NF_SUBSECTOR) )
	{
		node = &nodes[nodenum];
		
		normal[0] = node->dy;
		normal[1] = -node->dx;
		normalize_fixed(normal);
		dist = mul_fixed(normal[0],node->x) + mul_fixed(normal[1],node->y);
		
		d1 = dot_fixed (v1->v, normal);
		d1 -= dist;

		d2 = dot_fixed (v2->v, normal);
		d2 -= dist;

		if(!(d1 < ON_EPSILON && d1 > -ON_EPSILON && d2 < ON_EPSILON && d2 > -ON_EPSILON))
		{
			if(d1 < ON_EPSILON2 && d1 > -ON_EPSILON2 && d2 < ON_EPSILON2 && d2 > -ON_EPSILON2)
				return 1;
		}

		side = R_PointOnSide (v2->x, v2->y, node);
		nodenum = node->children[side];
	}

	return 0;

}

void	ClipWinding2 (winding_t *in, vertex_t *v1,vertex_t *v2,winding_t **front, winding_t **back);
winding_t *ds_clip_to_subsector(unsigned short num,winding_t *floor)
{
	subsector_t *sub;
	seg_t *line;
	normal_t normal,normal2;
	fixed_t dist;
	int i,j,count;
	int div;
	int min[2] = {0x7fffffff,0x7fffffff};
	winding_t *floor2,*fw,*bw,*parent = floor;
	int depth = 0;
	vertex_t a,b;
	sector_t *sector,*frontsector,*backsector;

#if 0
	add_winding(floor,depth*10.0f,num);

	R_RenderView();

	waitforit();

#endif
	sub  = &subsectors[num];
	sector = sub->sector;
    line = &segs[sub->firstline];
	count = sub->numlines;
	i = 0;
	//printf("sub: %d %d\n",num,sub->sector-sectors);

	do
	{
		if(line->v1->x < min[0]) {
			min[0] = line->v1->x;
		}
		if(line->v2->x < min[0]) {
			min[0] = line->v2->x;
		}
		if(line->v1->y < min[1]) {
			min[1] = line->v1->y;
		}
		if(line->v2->y < min[1]) {
			min[1] = line->v2->y;
		}

		normal[0] = line->v2->y - line->v1->y;
		normal[1] = -(line->v2->x - line->v1->x);
		normalize_fixed(normal);
		dist = dot_fixed(normal,line->v2->v);

		/*if(faces_front(normal,dist,sub))
		{
			normal[0] = -normal[0];
			normal[1] = -normal[1];
			dist = -dist;
		}*/
		frontsector = line->frontsector;
		backsector = line->backsector;

		//line->linedef->sidenum

		//printf("\tf: %4d b: %d\n",frontsector-sectors,backsector != 0 ? (backsector - sectors) : -1);
	
#if 1
		// reject empty lines used for triggers and special events
		if (backsector)// || num != 176)
			goto skip;

		if(R_PointsOnNode(line->v1,line->v2) == 1)
			goto skip;


		/*if(R_PointInSubsector(line->v1->x,line->v1->y) == sub ||
			R_PointInSubsector(line->v2->x,line->v2->y) == sub )
			goto skip;*/

		//if(line->backsector == 0) {
			ClipWinding2 (floor, line->v1,line->v2, &fw, &bw);
			if(backsector && bw)
			{
#if 0
	depth++;
	add_winding(bw,depth*10.0f,-1);

	R_RenderView();

	waitforit();
#endif
				bw = bw;
			}
			//floor2 = ChopWinding(floor,normal,dist);
			/*if(backsector == 0)
				floor = fw;
			else if(backsector == sector)
				floor = bw;
			else*/
				floor = fw;
			if(floor == 0)
				return 0;
		//}
#endif

skip:
		i++;
		line++;
	}
	while(i < count);

#if 0
	depth++;
	add_winding(floor,depth*10.0f,num);

	R_RenderView();

	waitforit();
#endif
	count = floor->numpoints;
	dist = sub->sector->floorheight;

	switch(sub->sector->special)
	{
	case 4:
	case 5:
	case 7:
	case 16:
		div = 1;
	default:
		div = 0;
	}

	if(sub->sector->ceilingpic == skyflatnum)
		div = 1;

	//if(div == 1)
	//	GL_SubdivideSurface(floor);
	min[0] >>= 16;
	min[1] >>= 16;
	min[0] &= (~63);
	min[1] &= (~63);

	floor->texmin[0] = min[0];
	floor->texmin[1] = min[1];
	floor->parent = parent;
	floor->children[0] = 0;
	floor->children[1] = 0;
	floor->next = sub->sector->windings;
	sub->sector->windings = floor;
	
	return floor;
}

/*void CrossProduct (vec3_t a, vec3_t b, vec3_t c)
{
	c[0] = a[1] * 1;
	c[1] = - a[0] * 1;
	c[2] = 0;
}*/

void ds_gen_floors_r(int bspnum,winding_t *floor,int depth)
{
    node_t*	bsp;
    int		side;
	normal_t normal;
	fixed_t dist;
	winding_t *front,*back;
	vertex_t a,b;

	waitforit2();

#if 0
	add_winding(floor,depth*10.0f,-1);

	R_RenderView();

	waitforit();

	//printf(".");
#endif

	front = back = 0;

    // Found a subsector?
    if (bspnum & NF_SUBSECTOR)
       {
        if (bspnum == -1)			
            floors_ds[0] = ds_clip_to_subsector(0,floor);
        else
           floors_ds[bspnum&(~NF_SUBSECTOR)] = ds_clip_to_subsector(bspnum&(~NF_SUBSECTOR),floor);
        return;
       }
		
    bsp = &nodes[bspnum];

	a.x = bsp->x;
	a.y = bsp->y;
	b.x = a.x + bsp->dx;
	b.y = a.y + bsp->dy;

#ifdef DEBUG_FLOORS
	add_line(a,b);
#endif

	//make a plane from the bsp node plane
	normal[0] = bsp->dy;
	normal[1] = -bsp->dx;
	normalize_fixed(normal);
	dist = mul_fixed(normal[0],bsp->x) + mul_fixed(normal[1],bsp->y);
	//normalize_plane(normal,&dist);

	ClipWinding ( floor, normal, dist, &front, &back);

	floor->children[0] = front;
	floor->children[1] = back;

	if(front && back)
	{
		front->parent = floor;
		back->parent = floor;
		ds_gen_floors_r (bsp->children[0],front,depth+1);
		ds_gen_floors_r (bsp->children[1],back,depth+1);
	}
	else if(front)
	{
		front->parent = floor;
		//back = CopyWinding(front);
		ds_gen_floors_r (bsp->children[0],front,depth+1);
		//ds_gen_floors_r (bsp->children[1],back,depth+1);
	}
	else if(back)
	{
		back->parent = floor;
		//front = CopyWinding(back);
		//ds_gen_floors_r (bsp->children[0],front,depth+1);
		ds_gen_floors_r (bsp->children[1],back,depth+1);
	}
	else
	{
		back = 0;
	}
#if 0
    // Recursively divide front space.
	if(front)
		ds_gen_floors_r (bsp->children[0],front,depth+1);
	else
		front = NULL;

    // Possibly divide back space.
	if(back)
		ds_gen_floors_r(bsp->children[1],back,depth+1);
	else
		back = NULL;
#endif

}

int draw_gen_floors=0,draw_gen_sub=0;

winding_t *ds_base_winding()
{
	winding_t	*w;
	vertex_t bbox[2];
	int i;

	bbox[0].x = bbox[0].y = (10000L<<16);
	bbox[1].x = bbox[1].y = -(10000L<<16);

	for(i=0;i<numvertexes;i++)
	{
		if(vertexes[i].x < bbox[0].x)
			bbox[0].x = vertexes[i].x;
		if(vertexes[i].y < bbox[0].y)
			bbox[0].y = vertexes[i].y;
		if(vertexes[i].x > bbox[1].x)
			bbox[1].x = vertexes[i].x;
		if(vertexes[i].y > bbox[1].y)
			bbox[1].y = vertexes[i].y;
	}
	

// project a really big	axis aligned box onto the plane
	w = AllocWinding (4);

	w->p[0].x = bbox[0].x;
	w->p[0].y = bbox[1].y;
	
	w->p[1].x = bbox[1].x;
	w->p[1].y = bbox[1].y;
	
	w->p[2].x = bbox[1].x;
	w->p[2].y = bbox[0].y;
	
	w->p[3].x = bbox[0].x;
	w->p[3].y = bbox[0].y;

	w->numpoints = 4;
	
	return w;
}
void draw_winding_path_r(winding_t *w);

void ds_gen_floors()
{
	winding_t *basewinding;
	node_t *node = &nodes[numnodes-1];

	waitforit2();

	draw_gen_floors = 1;
    floors_ds = Z_Malloc (numsubsectors*sizeof(winding_t *),PU_LEVEL,0);
	memset(floors_ds, 0, numsubsectors*sizeof(winding_t *));
	basewinding = ds_base_winding();//BaseWinding();
#ifdef DEBUG_FLOORS
	floors_ds2 = (winding_t **)malloc(5000*sizeof(winding_t *));
#endif
	ds_gen_floors_r(numnodes-1,basewinding,0);
	draw_gen_floors = 0;

	/*floors_ds3 = (winding_t **)malloc(20000*sizeof(winding_t *));
	draw_gen_sub = 1;
	draw_winding_path_r(floors_ds[183]);
	draw_gen_sub = 0;
	waitforit2();*/
}

#ifdef DEBUG_FLOORS

void draw_floors()
{
	int i;
	winding_t *floor;

	for(i=0;i < floor_count;i++)
	{
		floor = floors_ds2[i];
		draw_winding(floor);
	}
}

void draw_lines()
{
	int i;
	for(i=0;i<num_lines;i++)
	{
		draw_line(&lines_ds[0][i],&lines_ds[1][i],200.0f);
	}
}

void draw_winding_path_r(winding_t *w)
{
	if(w->parent)
	{
		draw_winding_path_r(w->parent);
	}
	add_sub_winding(w);
#if 1
	R_RenderView();

	waitforit();
#endif
}

void draw_gen_subs()
{
	winding_t *floor;
	float temp;
	int i;
	for(i=0;i<sub_count;i++)
	{
		floor = floors_ds3[i];
		temp = floor->dist;
		floor->dist = 0;//i*10.0f;
		draw_winding(floor);
		floor->dist = temp;
	}
}
#endif

#endif
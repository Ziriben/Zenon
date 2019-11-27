/*
scrGridDrawTexture(index,x,y,texture_index,color)
Draws the grid with a texture

*/
var h,w,xtex,ytex,xtex1,xtex2,ytex1,xx,yy;

h=global.effectgrid_height[argument0]
w=global.effectgrid_width[argument0]-1
xtex=texture_get_width(argument3)
ytex=texture_get_height(argument3)
draw_set_color(argument4)

for (xx=0;xx<w;xx+=1)
{
    draw_primitive_begin_texture(pr_trianglestrip,argument3)
    for (yy=0;yy<h;yy+=1)
    {
        xtex1=xtex*(xx/w)
        xtex2=xtex*((xx+1)/w)
        ytex1=ytex*(yy/(h-1))
        draw_vertex_texture(argument1+global.effectgrid_dotx[argument0,h*xx+yy],argument2+global.effectgrid_doty[argument0,h*xx+yy],xtex1,ytex1)
        draw_vertex_texture(argument1+global.effectgrid_dotx[argument0,h*(xx+1)+yy],argument2+global.effectgrid_doty[argument0,h*(xx+1)+yy],xtex2,ytex1)
    }
    draw_primitive_end()
}


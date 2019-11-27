/*
scrGridDraw(index,x,y,color)
Draws a simple two-color grid
*/

h=global.effectgrid_height[argument0]
w=global.effectgrid_width[argument0]-1

draw_set_color(argument3)

for (xx=0;xx<w;xx+=1)
{
    draw_primitive_begin(pr_linestrip)
    for (yy=0;yy<h;yy+=2)
    {
        var1=h*xx+yy
        var2=h*(xx+1)+yy
        draw_vertex(argument1+global.effectgrid_dotx[argument0,var1],argument2+global.effectgrid_doty[argument0,var1])
        draw_vertex(argument1+global.effectgrid_dotx[argument0,var2],argument2+global.effectgrid_doty[argument0,var2])
        draw_vertex(argument1+global.effectgrid_dotx[argument0,var2],argument2+global.effectgrid_doty[argument0,var2+1])
        draw_vertex(argument1+global.effectgrid_dotx[argument0,var1],argument2+global.effectgrid_doty[argument0,var1+1])
    }
    draw_primitive_end()
}

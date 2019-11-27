/*
scrGridExplode(index,x,y,radius,force)
Makes the points move away from the explosion area.
*/
var i;
for (i=0;i<global.effectgrid_dots[argument0];i+=1)
{
    if point_distance(argument1,argument2,global.effectgrid_dotx[argument0,i],global.effectgrid_doty[argument0,i])<=argument3
    {
        var dot_x,dot_y,dir,dist;
        dot_x=global.effectgrid_dotx[argument0,i]
        dot_y=global.effectgrid_doty[argument0,i]
        dir=point_direction(argument1,argument2,dot_x,dot_y)
        dist=min(max(argument3-point_distance(argument1,argument2,dot_x,dot_y),0)*(argument4/100),100)
        global.effectgrid_dotx[argument0,i]+=lengthdir_x(dist,dir)
        global.effectgrid_doty[argument0,i]+=lengthdir_y(dist,dir)
    }
}

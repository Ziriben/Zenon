/*
scrGridImplode(index,x,y,radius,force)
Makes the points move towards the implosion area.
*/
var i,dot_x,dot_y,dir,dist;
for (i=0;i<global.effectgrid_dots[argument0];i+=1)
{
    dot_x=global.effectgrid_dotx[argument0,i]
    dot_y=global.effectgrid_doty[argument0,i]
    if point_distance(argument1,argument2,dot_x,dot_y)<=argument3
    {
        dir=point_direction(dot_x,dot_y,argument1,argument2)
        dist=min(max(argument3-point_distance(argument1,argument2,dot_x,dot_y),0)*(argument4/100),100)
        global.effectgrid_dotx[argument0,i]+=lengthdir_x(dist,dir)
        global.effectgrid_doty[argument0,i]+=lengthdir_y(dist,dir)
    }
}

/*scrGridUpdate(index,gravity)

This script should run every step.
With a gravity of 1, the points will instantly move back
to position, making them static. With a gravity of 0, they
will not move back at all, making changes to the grid permanent.
Everything in between will make the points slowly move back to their
initial position.

*/
for (i=0;i<global.effectgrid_dots[argument0];i+=1)
{
    //Find the direction from the points coordinates to its starting coordinates
    dir=point_direction(global.effectgrid_dotx[argument0,i],global.effectgrid_doty[argument0,i],
    global.effectgrid_dotstartx[argument0,i],global.effectgrid_dotstarty[argument0,i])
    
    //Find the distance from the points coordinates to its starting coordinates
    dist=min(point_distance(global.effectgrid_dotx[argument0,i],global.effectgrid_doty[argument0,i],
    global.effectgrid_dotstartx[argument0,i],global.effectgrid_dotstarty[argument0,i]),200)
    
    //Move the coordinate
    global.effectgrid_dotx[argument0,i]+=lengthdir_x(dist*min(argument1,1),dir)
    global.effectgrid_doty[argument0,i]+=lengthdir_y(dist*min(argument1,1),dir)
}

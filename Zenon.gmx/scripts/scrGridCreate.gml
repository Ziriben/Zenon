/*
scrGridCreate(index,x,y,vtiles,htiles,width,height)
"index" should be a positive integer. This is where you create the grids id.
As all variables are global, the index should be different for every grid
you make, even in different objects.

h/vtiles: How many tiles should be in the grid
width/height: The size of the grid.

*/
var xx,yy;
global.effectgrid_dots[argument0]=0
global.effectgrid_width[argument0]=floor(argument1/2)*2
global.effectgrid_height[argument0]=floor(argument2/2)*2
for (xx=0;xx<argument1;xx+=1)
{
    for (yy=0;yy<global.effectgrid_height[argument0];yy+=1)
    {
        global.effectgrid_dotstartx[argument0,global.effectgrid_dots[argument0]]=xx*(argument3/(global.effectgrid_width[argument0]-1))
        global.effectgrid_dotstarty[argument0,global.effectgrid_dots[argument0]]=yy*(argument4/(global.effectgrid_height[argument0]-1))
        global.effectgrid_dotx[argument0,global.effectgrid_dots[argument0]]=global.effectgrid_dotstartx[argument0,global.effectgrid_dots[argument0]]
        global.effectgrid_doty[argument0,global.effectgrid_dots[argument0]]=global.effectgrid_dotstarty[argument0,global.effectgrid_dots[argument0]]
        global.effectgrid_dots[argument0]+=1
    }
}

return argument0

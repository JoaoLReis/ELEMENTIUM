/* Syntax: draw_text_shadow(x,y,str,dist,dir,scol,salph);

Arguments:
x - The x-position of the text.
y - The y-position of the text
str - The text to draw
dist - The distance to the shadow
dir - The direction to the shadow
scol - The shadow color
salph - The shadow alpha

Returns: Nothing

Notes: Draws the given text at the given position with the given shadow.

*/
var xx,yy,str,dist,dir,scol,salph;
xx=argument0;
yy=argument1;
str=argument2;
dist=2;
dir=-45;
scol=c_black;
salph=1.0;

draw_text_color(xx+lengthdir_x(dist,dir),yy+lengthdir_y(dist,dir),str,scol,scol,scol,scol,salph);
draw_text(xx,yy,str);

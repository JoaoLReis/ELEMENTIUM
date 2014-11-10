//set temp variables
var x1, y1, x2, y2;
var width, height;
var value, value_max;
var border; 


//get values from arugments
 x1 = argument0;
 y1 = argument1;
 width = argument2;
 height = argument3;
 value = argument4;
 value_max = argument5;

//draw the back of the health bar
 border = 1;
draw_set_color(c_black);
draw_rectangle(x1-border, y1-border, x1+width+border, y1+height+border, false);

//set length and height values
 x2 = x1 + (value/value_max * width);
 y2 = y1 + height;

//draw the health bar, set drawing color then draw the rectange 
draw_set_color(c_red);
draw_rectangle(x1,y1,x2,y2,false);

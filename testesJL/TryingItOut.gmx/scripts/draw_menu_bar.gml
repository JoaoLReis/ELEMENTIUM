var yValue = argument0;
var curValue = argument1;
var maxValue = argument2;
var text = argument3;

draw_text(150, yValue, text + string(curValue) + " / " + string(maxValue));
var i;
for(i = 0; i < curValue; i++)
    draw_sprite(sp_green_bar, 0, 380 + i*30, yValue + 8);
for(i = curValue; i < maxValue; i++)
    draw_sprite(sp_red_bar, 0, 380 + i*30, yValue + 8);

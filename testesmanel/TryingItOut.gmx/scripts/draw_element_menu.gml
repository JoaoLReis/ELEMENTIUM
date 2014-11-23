var currentState = argument0;
var yoffset = 30;
var xoffset = 50;

//draw current state
if(currentState == "NEUTRAL")
{
    draw_sprite(sp_gui_neutral, -1, sprite_get_width(sp_gui_neutral)/2 + xoffset, sprite_get_height(sp_gui_neutral)/2 + yoffset);
}
else if (currentState == "FIRE")
{
    draw_sprite(sp_gui_fire, -1, sprite_get_width(sp_gui_fire)/2 + xoffset, sprite_get_height(sp_gui_fire)/2 + yoffset);
}
else if (currentState == "WATER")
{
    draw_sprite(sp_gui_water, -1, sprite_get_width(sp_gui_water)/2 + xoffset, sprite_get_height(sp_gui_water)/2 + yoffset);
}
else if (currentState == "EARTH")
{
    draw_sprite(sp_gui_earth, -1, sprite_get_width(sp_gui_earth)/2 + xoffset, sprite_get_height(sp_gui_earth)/2 + yoffset);
}

//draw previous state
var previousState = getNextElementalState(argument0, false, argument1);
var prevxoffset = -10;
var prevyoffset = yoffset - 20;

if(previousState == "NEUTRAL"){
    draw_sprite_general(sp_gui_neutral, -1,
                        sprite_get_width(sp_gui_neutral)/2, 0, 
                        sprite_get_width(sp_gui_neutral)/2,sprite_get_height(sp_gui_neutral),
                        sprite_get_width(sp_gui_neutral)/2 + prevxoffset,sprite_get_height(sp_gui_neutral)/2 + prevyoffset,
                        0.5,0.5, 
                        0, c_white,c_white,c_white,c_white,1);
}
else if (previousState == "FIRE"){
    draw_sprite_general(sp_gui_fire, -1,
                        sprite_get_width(sp_gui_fire)/2, 0, 
                        sprite_get_width(sp_gui_fire)/2,sprite_get_height(sp_gui_fire),
                        sprite_get_width(sp_gui_fire)/2 + prevxoffset,sprite_get_height(sp_gui_fire)/2 + prevyoffset,
                        0.5,0.5, 
                        0, c_white,c_white,c_white,c_white,1);
}
else if (previousState == "WATER"){
    draw_sprite_general(sp_gui_water, -1,
                        sprite_get_width(sp_gui_water)/2, 0, 
                        sprite_get_width(sp_gui_water)/2,sprite_get_height(sp_gui_water),
                        sprite_get_width(sp_gui_water)/2 + prevxoffset,sprite_get_height(sp_gui_water)/2 + prevyoffset,
                        0.5,0.5, 
                        0, c_white,c_white,c_white,c_white,1);
}
else if (previousState == "EARTH"){
    draw_sprite_general(sp_gui_earth, -1,
                        sprite_get_width(sp_gui_earth)/2, 0, 
                        sprite_get_width(sp_gui_earth)/2,sprite_get_height(sp_gui_earth),
                        sprite_get_width(sp_gui_earth)/2 + prevxoffset,sprite_get_height(sp_gui_earth)/2 + prevyoffset,
                        0.5,0.5, 
                        0, c_white,c_white,c_white,c_white,1);
}



//draw next state
var nextState = getNextElementalState(argument0, true, argument1);
var nextxoffset = prevxoffset + 100;
var nextyoffset = prevyoffset;

if(nextState == "NEUTRAL"){
    draw_sprite_general(sp_gui_neutral, -1,
                        0, 0,
                        sprite_get_width(sp_gui_neutral)/2,sprite_get_height(sp_gui_neutral),
                        sprite_get_width(sp_gui_neutral)/2 + nextxoffset,sprite_get_height(sp_gui_neutral)/2 + nextyoffset,
                        0.5,0.5, 
                        0, c_white,c_white,c_white,c_white,1);
}
else if (nextState == "FIRE"){
    draw_sprite_general(sp_gui_fire, -1,
                        0, 0,
                        sprite_get_width(sp_gui_fire)/2,sprite_get_height(sp_gui_fire),
                        sprite_get_width(sp_gui_fire)/2 + nextxoffset,sprite_get_height(sp_gui_fire)/2 + nextyoffset,
                        0.5,0.5, 
                        0, c_white,c_white,c_white,c_white,1);
}
else if (nextState == "WATER"){
    draw_sprite_general(sp_gui_water, -1,
                        0, 0,
                        sprite_get_width(sp_gui_water)/2,sprite_get_height(sp_gui_water),
                        sprite_get_width(sp_gui_water)/2 + nextxoffset,sprite_get_height(sp_gui_water)/2 + nextyoffset,
                        0.5,0.5, 
                        0, c_white,c_white,c_white,c_white,1);
}
else if (nextState == "EARTH"){
    draw_sprite_general(sp_gui_earth, -1,
                        0, 0,
                        sprite_get_width(sp_gui_earth)/2,sprite_get_height(sp_gui_earth),
                        sprite_get_width(sp_gui_earth)/2 + nextxoffset,sprite_get_height(sp_gui_earth)/2 + nextyoffset,
                        0.5,0.5, 
                        0, c_white,c_white,c_white,c_white,1);
}

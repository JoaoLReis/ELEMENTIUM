var currentState = argument0;

if(currentState == "NEUTRAL")
{
    draw_sprite(sp_gui_neutral, -1, sprite_get_width(sp_gui_neutral)/2, sprite_get_height(sp_gui_neutral)/2);
}
else if (currentState == "FIRE")
{
    draw_sprite(sp_gui_fire, -1, sprite_get_width(sp_gui_fire)/2, sprite_get_height(sp_gui_fire)/2);
}
else if (currentState == "WATER")
{
    draw_sprite(sp_gui_water, -1, sprite_get_width(sp_gui_water)/2, sprite_get_height(sp_gui_water)/2);
}
else if (currentState == "EARTH")
{
    draw_sprite(sp_gui_earth, -1, sprite_get_width(sp_gui_earth)/2, sprite_get_height(sp_gui_earth)/2);
}


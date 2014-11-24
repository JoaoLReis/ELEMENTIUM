var posx = mouse_x;
var posy = mouse_y;

var b = instance_create(posx, posy, obj_ice_wall);

var wallDirection = point_direction(obj_player.x, obj_player.y, posx, posy);
b.direction = wallDirection;
b.image_angle = wallDirection;

var newx;
var newy;

if(wallDirection%360 < 90)
{
    newx = sp_ice_block.sprite_width * sin(degtorad(wallDirection));
    newy = sp_ice_block.sprite_height * cos(degtorad(wallDirection));
}
else if(wallDirection%360 < 180)
{
    newx = sp_ice_block.sprite_width * sin(degtorad(wallDirection));
    newy = sp_ice_block.sprite_height * cos(degtorad(wallDirection));
}
else if(wallDirection%360 < 270)
{
    newx = sp_ice_block.sprite_width * sin(degtorad(wallDirection));
    newy = sp_ice_block.sprite_height * cos(degtorad(wallDirection));
}
if(wallDirection%360 < 360)
{
    newx = sp_ice_block.sprite_width * sin(degtorad(wallDirection));
    newy = sp_ice_block.sprite_height * cos(degtorad(wallDirection));
}

var c = instance_create(posx - newx, posy - newy, obj_ice_wall);
c.direction = wallDirection;
c.image_angle = wallDirection;
var d = instance_create(posx + newx, posy + newy, obj_ice_wall);
d.direction = wallDirection;
d.image_angle = wallDirection;

obj_player.spells[4] = global.E_water_cooldown;

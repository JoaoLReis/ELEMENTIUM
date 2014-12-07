var posx = mouse_x;
var posy = mouse_y;

var b = instance_create(posx, posy, obj_ice_wall);

var wallDirection = point_direction(obj_player.x, obj_player.y, posx, posy);
b.direction = wallDirection;
b.image_angle = wallDirection;

var newx = obj_ice_wall.sprite_width * sin(degtorad(wallDirection));
var newy = obj_ice_wall.sprite_height * cos(degtorad(wallDirection));

var c = instance_create(posx - newx, posy - newy, obj_ice_wall);
c.direction = wallDirection;
c.image_angle = wallDirection;
var d = instance_create(posx + newx, posy + newy, obj_ice_wall);
d.direction = wallDirection;
d.image_angle = wallDirection;

obj_player.spells[4] = global.E_water_cooldown;

CooldownShow(sp_ice_block, global.E_water_cooldown);

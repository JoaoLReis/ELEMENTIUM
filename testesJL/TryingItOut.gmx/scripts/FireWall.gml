var posx = mouse_x;
var posy = mouse_y;

var b = instance_create(posx, posy, obj_fire_wall);

var wallDirection = point_direction(obj_player.x, obj_player.y, posx, posy);

var newx;
var newy;

newx = obj_fire_wall.sprite_width  * sin(degtorad(wallDirection))*1.5;
newy = obj_fire_wall.sprite_width  * cos(degtorad(wallDirection))*1.5;


var c = instance_create(posx - newx, posy - newy, obj_fire_wall);
var d = instance_create(posx + newx, posy + newy, obj_fire_wall);

obj_player.spells[2] = global.R_fire_cooldown;

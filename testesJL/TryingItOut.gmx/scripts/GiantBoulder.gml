//Towards direction
var controller = argument0;
var angle = argument1;
var b = instance_create(x, y, obj_giant_boulder);
if(controller)
    b.direction = angle;
else
    b.direction = point_direction(x, y, mouse_x, mouse_y);
b.image_angle = image_angle;
b.speed = 7;

obj_player.spells[7] = global.E_earth_cooldown;

CooldownShow(sp_Giant_Boulder, global.E_earth_cooldown);

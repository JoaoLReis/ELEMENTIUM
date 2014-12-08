//Towards direction
var controller = argument0;
var angle = argument1;
var b = instance_create(x, y, obj_fire_dragon);
if(controller)
    b.direction = angle;
else
    b.direction = point_direction(x, y, mouse_x, mouse_y);
b.image_angle = b.direction;
b.speed = 20;  

obj_player.spells[1] = global.E_fire_cooldown;

CooldownShow(sp_dragon, global.E_fire_cooldown);

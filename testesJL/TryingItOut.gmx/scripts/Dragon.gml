//Towards direction
var b = instance_create(x, y, obj_fire_dragon);
b.direction = point_direction(x, y, mouse_x, mouse_y);
b.image_angle = b.direction;
b.speed = 20;  
canshoot = false;
obj_player.spells[1] = global.E_fire_cooldown;

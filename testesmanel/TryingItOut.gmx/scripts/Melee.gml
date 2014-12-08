//Towards direction
var b = instance_create(x, y, obj_melee);
b.direction = point_direction(x, y, mouse_x, mouse_y);
b.image_angle = b.direction;

obj_player.canmelee = false;
obj_player.canmove = false;
obj_player.alarm[1]=30;
obj_player.alarm[2]=4;

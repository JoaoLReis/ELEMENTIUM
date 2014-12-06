//Towards direction
var b = instance_create(x, y, obj_bullet);
b.direction = point_direction(x, y, mouse_x, mouse_y);
b.image_angle = image_angle;
b.speed = 10;

obj_player.canshoot = false;
obj_player.alarm[0]=27;

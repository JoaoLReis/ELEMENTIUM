//Towards direction
var b = instance_create(x, y, obj_bulletFire);
b.direction = point_direction(x, y, mouse_x, mouse_y);
b.image_angle = image_angle;
b.speed = 10;
canshoot = false;
obj_player.spells[0] = global.Q_fire_cooldown;
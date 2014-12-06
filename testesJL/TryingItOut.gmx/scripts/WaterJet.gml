//Towards direction
var i;
var b = instance_create(x, y, obj_bulletWater);
b.direction = point_direction(x, y, mouse_x, mouse_y);
b.damage = b.damage / 4;
b.image_angle = image_angle;
b.speed = 10;

i = random_range(-20,20)

b.direction +=5 + i;

obj_player.spells[3] = global.Q_water_cooldown;

//CooldownShow(sp_bulletWater, global.Q_water_cooldown);

//Towards direction
var controller = argument0;
var angle = argument1;
var i;
for(i = 0; i < 1; i++)
{
    var b = instance_create(x, y, obj_bulletEarth);
    if(controller)
        b.direction = angle;
    else
        b.direction = point_direction(x, y, mouse_x, mouse_y);
    b.image_angle = image_angle;
    b.speed = random_range(10, 10);
}

obj_player.spells[6] = global.Q_earth_cooldown;

//CooldownShow(sp_bulletEarth, global.Q_earth_cooldown);

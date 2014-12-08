//Towards direction
var controller = argument0;
var angle = argument1;
var i;
for(i = 0; i < 5; i++)
{
    var b = instance_create(x, y, obj_bulletFire);
    if(controller)
        b.direction = angle;
    else
        b.direction = point_direction(x, y, mouse_x, mouse_y);
    b.image_angle = image_angle;
    b.speed = random_range(7, 10);  
}

obj_player.spells[0] = global.Q_fire_cooldown;

//CooldownShow(sp_bulletFire, global.Q_fire_cooldown);

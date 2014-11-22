//Towards direction
var i;
for (i = 0; i < 20; i += 1)
{
    var b = instance_create(x, y, obj_bulletWater);
    b.direction = 18 * i;
    b.damage = b.damage / 10;
    b.image_angle = image_angle;
    b.speed = 10;
}

spells[5]=global.R_water_cooldown;

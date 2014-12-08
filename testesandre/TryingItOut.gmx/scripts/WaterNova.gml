//Towards direction
var i;
var controller = argument0;
var angle = argument1;
for (i = 0; i < 50; i += 1)
{
    var b = instance_create(x, y, obj_bulletIce);
    b.direction = 7.2 * i;
    b.damage = b.damage / 10;
    b.image_angle = image_angle;
    b.speed = 10;
}

spells[5]=global.R_water_cooldown;

CooldownShow(sp_ice, global.R_water_cooldown);

//Towards direction
var i;
for (i = 0; i < 10; i += 1)
{
    var b = instance_create(x, y, obj_bulletWater);
    b.direction = point_direction(x, y, mouse_x, mouse_y);
    b.damage = b.damage / 10;
    b.image_angle = image_angle;
    b.speed = 10;
    if(random_range(0,20) > 10)
    {
        b.direction +=5 + i;
    }
    else b.direction -=5 - i;
}

alarm[0]=20;

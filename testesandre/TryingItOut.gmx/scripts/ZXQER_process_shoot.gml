

//Q
if(keyboard_check(ord("Q")))
{
    if (canshoot) 
    { 
        //Towards direction
        var b = instance_create(x, y, obj_bulletFire);
        b.direction = direction;
        b.speed = 10;
        canshoot = false;
        alarm[0]=9;
    }
}
else
//E
if(keyboard_check(ord("E")))
{
    if (canshoot) 
    {
        //Towards direction
        var b = instance_create(x, y, obj_bulletWater);
        b.direction = direction;
        b.speed = 10;
        canshoot = false;
        alarm[0]=9;
    }
}
else
//R
if(keyboard_check(ord("R")))
{
    if (canshoot) 
    {
        //Towards direction
        var b = instance_create(x, y, obj_bulletEarth);
        b.direction = direction;
        b.speed = 10;
        canshoot = false;
        alarm[0]=9;
    }
}
else

//X
/// Melee
if(keyboard_check(ord("X")))
{
    if (canmelee)
    {
        //Towards direction
        var b = instance_create(x, y, obj_melee);
        b.direction = direction;
        b.image_angle = direction;
        canmove = false
        canmelee = false;
        alarm[1] = 13;
        alarm[2] = 6;
    }
}
else

//Z
if(keyboard_check(ord("Z")))
{
    if (canshoot)
    {
        //Towards direction
        var b = instance_create(x, y, obj_bullet);
        b.direction = direction;
        b.speed = 10;
        canshoot = false;
        alarm[0]=9;
    }
}

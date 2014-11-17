

//Q
if(mouse_check_button(mb_left))
{
    if (canshoot) 
    {
        switch elementalState
        {
            case 'NEUTRAL':
            {
                BulletShoot();
            }
            break;
            case 'FIRE': 
            {
                FireBall();
            }; 
            break;
            case 'WATER':
            {
                WaterSpray();
            };
            break;
            case 'EARTH':
            {
                StoneArmour();
            };
            break;
        }    
    }
}

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




//Q
if(mouse_check_button(mb_left))
{
    switch elementalState
    {
        case 'NEUTRAL':
        {
            if(canshoot)
                BulletShoot();
        }
        break;
        case 'FIRE': 
        {
            if(obj_player.spells[0] < 0)
                FireBall();
        }; 
        break;
        case 'WATER':
        {
            if(obj_player.spells[3] < 0)
                WaterSpray();
        };
        break;
        case 'EARTH':
        {   
            if(obj_player.spells[6] < 0)
                StoneArmour();
        };
        break;
    }    
    
}

//E
if(mouse_check_button(mb_right))
{
    switch elementalState
    {
        case 'NEUTRAL':
        {
            if(canshoot)
                BulletShoot();
        }
        break;
        case 'FIRE': 
        {
            if(obj_player.spells[1] < 0)
                FireBall();
        }; 
        break;
        case 'WATER':
        {
            if(obj_player.spells[4] < 0)
                IceWall();
        };
        break;
        case 'EARTH':
        {   
            if(obj_player.spells[7] < 0)
                StoneArmour();
        };
        break;
    }    
    
}

//R
if(mouse_check_button(mb_middle))
{
    switch elementalState
    {
        case 'NEUTRAL':
        {
            if(canshoot)
                BulletShoot();
        }
        break;
        case 'FIRE': 
        {
            if(obj_player.spells[2] < 0)
                FireBall();
        }; 
        break;
        case 'WATER':
        {
            if(obj_player.spells[5] < 0)
                WaterNova();
        };
        break;
        case 'EARTH':
        {   
            if(obj_player.spells[8] < 0)
                StoneArmour();
        };
        break;
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

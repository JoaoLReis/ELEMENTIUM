

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
            if(global.curFireStrength > 0 && obj_player.spells[0] < 0)
                FireBall();
        }; 
        break;
        case 'WATER':
        {
            if(global.curWaterStrength > 0 && obj_player.spells[3] < 0)
                WaterJet();
        };
        break;
        case 'EARTH':
        {   
            if(global.curEarthStrength > 0 && obj_player.spells[6] < 0)
                EarthProjectile();
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
            if(canmelee)
                Melee();
        }
        break;
        case 'FIRE': 
        {
            if(global.curFireStrength > 1 && obj_player.spells[1] < 0)
                Dragon();
        }; 
        break;
        case 'WATER':
        {
            if(global.curWaterStrength > 1 && obj_player.spells[4] < 0)
                IceWall();
        };
        break;
        case 'EARTH':
        {   
            if(global.curEarthStrength > 1 && obj_player.spells[7] < 0)
                GiantBoulder();
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
            if(global.curFireStrength > 2 && obj_player.spells[2] < 0)
                FireWall();
        }; 
        break;
        case 'WATER':
        {
            if(global.curWaterStrength > 2 && obj_player.spells[5] < 0)
                WaterNova();
        };
        break;
        case 'EARTH':
        {   
            if(global.curEarthStrength > 2 && obj_player.spells[8] < 0)
                StoneArmor();
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

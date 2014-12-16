var strength = 1;
var anglej = global.anglej;
var j = false;
if(joystick_exists(1)){
    j = true;
    key_right = 0;
    key_left = 0;
    key_up = 0;
    key_down = 0;

    var xj = joystick_rpos(1);
    if(xj > 0)
        key_right = xj;
    else
        key_left = -xj;
    
    var yj = joystick_zpos(1);
    if(yj > 0)
        key_down = yj;
    else
        key_up = -yj;
    strength = sqrt(xj * xj + yj * yj);
    if(strength > 0.4){
        anglej  = arctan2(-yj, xj);    
        anglej = radtodeg(anglej);
        if(anglej < 0)
            anglej += 360;
        global.anglej = anglej;
    }
}

//Q
if(mouse_check_button(mb_left) || (j && strength > 0.3))
{
    switch elementalState
    {
        case 'NEUTRAL':
        {
            if(canshoot)
                BulletShoot(j, anglej);
        }
        break;
        case 'FIRE': 
        {
            if(global.curFireStrength > 0 && obj_player.spells[0] < 0)
                FireBall(j, anglej);
        }; 
        break;
        case 'WATER':
        {
            if(global.curWaterStrength > 0 && obj_player.spells[3] < 0)
                WaterJet(j, anglej);
        };
        break;
        case 'EARTH':
        {   
            if(global.curEarthStrength > 0 && obj_player.spells[6] < 0)
                EarthProjectile(j, anglej);
        };
        break;
    }    
    
}

//E
if(mouse_check_button(mb_right) || (j && joystick_check_button(1, 6)))
{
    switch elementalState
    {
        case 'NEUTRAL':
        {
            if(canmelee)
                Melee(j, anglej);
        }
        break;
        case 'FIRE': 
        {
            if(global.curFireStrength > 1 && obj_player.spells[1] < 0)
                Dragon(j, anglej);
        }; 
        break;
        case 'WATER':
        {
            if(global.curWaterStrength > 1 && obj_player.spells[4] < 0)
                IceWall(j, anglej);
        };
        break;
        case 'EARTH':
        {   
            if(global.curEarthStrength > 1 && obj_player.spells[7] < 0)
                GiantBoulder(j, anglej);
        };
        break;
    }    
    
}

//R
if(mouse_check_button(mb_middle) || ( j && joystick_check_button(1, 5)))
{
    switch elementalState
    {
        case 'NEUTRAL':
        {
            if(canshoot)
                BulletShoot(j, anglej);
        }
        break;
        case 'FIRE': 
        {
            if(global.curFireStrength > 2 && obj_player.spells[2] < 0)
                FireWall(j, anglej);
        }; 
        break;
        case 'WATER':
        {
            if(global.curWaterStrength > 2 && obj_player.spells[5] < 0)
                WaterNova(j, anglej);
        };
        break;
        case 'EARTH':
        {   
            if(global.curEarthStrength > 2 && obj_player.spells[8] < 0)
                StoneArmor(j, anglej);
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

var incomingDamage = argument0;

target = obj_player;

if(!target.flash){
    global.valueHealth = global.valueHealth - (incomingDamage * (1 - global.valueDefense));
    target.flash = true;
    target.alarm[3] = 30;
    

  
    //this goes in collision event with player in the enemy
    //direct = obj_player.direction;
    //target.dir = point_direction(x, y, target.x, target.y)
    //motion_set(-target.dir,10);  
    //with (obj_player ) { motion_set(dir,10) }
    //obj_player.direction = direct;   
}


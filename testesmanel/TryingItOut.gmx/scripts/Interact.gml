var player = argument0;
var interactable = argument1;

if(interactable != player)
{
    switch(interactable.ident)
    {
        
        //planets
        case 1:
            room_goto(rm_Earth_Planet);
            break;
        case 2:
            room_goto(rm_Fire_Planet);
            break;
        case 3:
            room_goto(rm_Water_Planet);
            break;
            
        //treasures TODO: also add current values
        case 501: //points, health, attack, defense, range
            var type = irandom(4);
            if(type == 0){
                global.defaultavailablePoints +=1;
                floatingMessage( "Max Points Increased!");
            }
            else if(type == 1){
                global.maxHealth +=1;
                floatingMessage( "Max Health Increased!");
            }
            else if(type == 2){
                global.maxAttack +=1;
                floatingMessage( "Max Attack Increased!");
            }
            else if(type == 3){
                global.maxDefense +=1;
                floatingMessage( "Max Defense Increased!");
            }
            else if(type == 4){
                global.maxProjRange +=1;
                floatingMessage( "Max Projectile Range Increased!");
            }
            player.interacting = false;
            with (interactable) { instance_destroy(); } 
            break;
        
        case 502: //points
            global.defaultavailablePoints +=1;
            floatingMessage( "Max Points Increased!"); 
            player.interacting = false;
            with (interactable) { instance_destroy(); } 
            break;
        
        case 503: //health
            global.maxHealth +=1;
            floatingMessage( "Max Health Increased!");
            player.interacting = false;
            with (interactable) { instance_destroy(); } 
            break;
            
        case 504: //attack
            global.maxAttack +=1;
            floatingMessage( "Max Attack Increased!");
            player.interacting = false;
            with (interactable) { instance_destroy(); } 
            break;
            
        case 505: //defense
            global.maxDefense +=1;
            floatingMessage( "Max Defense Increased!");
            player.interacting = false;
            with (interactable) { instance_destroy(); } 
            break;
            
        case 506: //range
            global.maxProjRange +=1;
            floatingMessage( "Max Projectile Range Increased!");
            player.interacting = false;
            with (interactable) { instance_destroy(); } 
            break;
    }
}

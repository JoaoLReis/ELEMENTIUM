var incType = argument0;
var player = argument1;


switch(incType)
{
    case 1:
        var type = irandom(4);
        if(type == 0){
            global.defaultavailablePoints +=1;
            floatingMessage( "Max Points Increased!");
        }
        else if(type == 1){
            global.maxHealth +=1;
            global.curHealth +=1;
            UpdateStats(1);
            floatingMessage( "Max Health Increased!");
        }
        else if(type == 2){
            global.maxAttack +=1;
            global.curAttack +=1;
            UpdateStats(2);
            floatingMessage( "Max Attack Increased!");
        }
        else if(type == 3){
            global.maxDefense +=1;
            global.curDefense +=1;
            
            UpdateStats(3);
            floatingMessage( "Max Defense Increased!");
        }
        else if(type == 4){
            global.maxProjRange +=1;
            global.curProjRange +=1;
            UpdateStats(4);
            floatingMessage( "Max Projectile Range Increased!");
        }
        player.interacting = false;
        with (interactable) { instance_destroy(); } 
        break;
    case 2: //points
        global.defaultavailablePoints +=1;
        floatingMessage( "Max Points Increased!"); 
        player.interacting = false;
        with (interactable) { instance_destroy(); } 
        break;
    
    case 3: //health
        global.maxHealth +=1;
        global.curHealth +=1;
        UpdateStats(1);
        floatingMessage( "Max Health Increased!");
        player.interacting = false;
        with (interactable) { instance_destroy(); } 
        break;
        
    case 4: //attack
        global.maxAttack +=1;
        global.curAttack +=1;
        UpdateStats(2);
        floatingMessage( "Max Attack Increased!");
        player.interacting = false;
        with (interactable) { instance_destroy(); } 
        break;
        
    case 5: //defense
        global.maxDefense +=1;
        global.curDefense +=1;
        UpdateStats(3);
        floatingMessage( "Max Defense Increased!");
        player.interacting = false;
        with (interactable) { instance_destroy(); } 
        break;
        
    case 6: //range
        global.maxProjRange +=1;
        global.curProjRange +=1;
        UpdateStats(4);
        floatingMessage( "Max Projectile Range Increased!");
        player.interacting = false;
        with (interactable) { instance_destroy(); } 
        break;

}

ds_list_replace(global.treasures, global.actualRoom - 1, ds_list_find_value(global.treasures, global.actualRoom) - 1);

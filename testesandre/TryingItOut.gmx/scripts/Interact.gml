var player = argument0;
var interactable = argument1;

if(interactable != player)
{
    switch(interactable.ident)
    {
        
        //planets
        case 1:
            room_goto(rm_Earth_Planet);
            global.actualRoom = 1;
            break;
        case 2:
            room_goto(rm_Fire_Planet);
            global.actualRoom = 2;
            break;
        case 3:
            room_goto(rm_Water_Planet);
            global.actualRoom = 3;
            break;
        case 4:
            room_goto(rm_final_room);
            global.actualRoom = 4;
            break;
            
        //treasures TODO: also add current values
        case 501: //points, health, attack, defense, range
            IncreaseStat(1, player);
            break;
        
        case 502: //points
            IncreaseStat(2, player);
            break;
        
        case 503: //health
            IncreaseStat(3, player);
            break;
            
        case 504: //attack
            IncreaseStat(4, player);
            break;
            
        case 505: //defense
            IncreaseStat(5, player);
            break;
            
        case 506: //range
            IncreaseStat(6, player); 
            break;
        //random temp stats
        case 507: 
            IncreaseTempStats(player);
            break;
            
            
        //ELEMENTS PICKUPS
        case 201://Earth
            IncreaseElement(1, player);
            with(interactable){instance_destroy()};
            break;
        case 202://Fire
            IncreaseElement(2, player);
            with(interactable){instance_destroy()};
            break;
        case 203://Water
            IncreaseElement(3, player);
            with(interactable){instance_destroy()};
            break;
    }
}

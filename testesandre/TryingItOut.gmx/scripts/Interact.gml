var player = argument0;
var interactable = argument1;

if(interactable != player)
{
    switch(interactable.ident)
    {
        case 1:
            room_goto(rm_Earth_Planet);
            break;
        case 2:
            room_goto(rm_Fire_Planet);
            break;
        case 3:
            room_goto(rm_Water_Planet);
            break;
    }
}

var element = argument0;
var player = argument1;


switch (element)
{
    //Earth
    case 1:
        var elementList = player.elements; 
        ds_list_add(elements, "EARTH");
        player.interacting = false;
        with (obj_element_earth) {instance_destroy()}
        break;
    //Water
    case 2:
        break;
    //Fire
    case 3:
        break;

}

var element = argument0;
var player = argument1;


switch (element)
{
    //Earth
    case 1:
        var elementList = global.elements; 
        ds_list_add(elementList, "EARTH");
        global.possEarthStr += 1;
        player.interacting = false;
        global.availablePoints += 1;
        global.defaultavailablePoints += 1;
        with (obj_element_earth) {instance_destroy()}
        break;
    //Fire
    case 2:
    var elementList = global.elements; 
        ds_list_add(elementList, "FIRE");
        global.possFireStr += 1;
        player.interacting = false;
        global.availablePoints += 1;
        global.defaultavailablePoints += 1;
        with (obj_element_earth) {instance_destroy()}
        break;
    //Water
    case 3:
        var elementList = global.elements; 
        ds_list_add(elementList, "WATER");
        global.possWaterStr += 1;
        player.interacting = false;
        global.availablePoints += 1;
        global.defaultavailablePoints += 1;
        with (obj_element_earth) {instance_destroy()}
        break;

}

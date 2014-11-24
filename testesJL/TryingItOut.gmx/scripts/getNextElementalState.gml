var state = argument0;
var upwards = argument1;
var localIndex = argument2;

var listSize = ds_list_size(global.elements);

target = obj_player;

//CHECKS IF THERE IS MORE THAN 1 ELEMENT
if(ds_list_size(global.elements) > 1){
    if(upwards){
        if(index < listSize-1){
            return ds_list_find_value(global.elements, localIndex+1);  
        }
        else {
            //JUST TO BE SURE, THIS IF IS USELESS
            if(index == listSize -1){
                return ds_list_find_value(global.elements, 0); 
            }
        }
    }//DOWNWARDS
    else{
        if(index == 0){
            return ds_list_find_value(global.elements, listSize-1);    
        }
        else{
            return ds_list_find_value(global.elements, localIndex-1);
        }
    }
}

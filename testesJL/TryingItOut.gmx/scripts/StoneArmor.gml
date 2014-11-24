//Towards direction
var b = instance_create(x, y, obj_stone_armor);
b.prevDef = global.valueDefense;
player = obj_player;

global.valueDefense += 5;

player.spells[8] = global.R_earth_cooldown;

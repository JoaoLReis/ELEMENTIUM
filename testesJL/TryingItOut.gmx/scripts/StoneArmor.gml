//Towards direction
var b = instance_create(x, y, obj_stone_armor);
b.prevDef = global.valueDefense;
player = obj_player;

global.valueDefense += (1 - global.valueDefense) * 0.75;

player.spells[8] = global.R_earth_cooldown;

CooldownShow(sp_stone_armor, global.R_earth_cooldown);

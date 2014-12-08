var sprite = argument0;
var cooldown = argument1;

xScale = 32 / sprite_get_width(sprite);
yScale = 32 / sprite_get_height(sprite);

var cooldown = instance_create(x, y, obj_cooldown);
cooldown.sprite = sprite;
cooldown.lifetime = argument1;
cooldown.spriteXScale = xScale;
cooldown.spriteYScale = yScale;
global.numberCooldowns += 1;
cooldown.alarm[0] = cooldown.lifetime;
ds_list_add(global.cooldowns, cooldown.id);

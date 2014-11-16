var damage = argument0;
var damageType = argument1;
var enemyHit = argument2;
 
if(damageType == "FIRE")
{
    enemyHit.valueHealth -= damage * 1.5; 
}

if(damageType == "WATER")
{
    enemyHit.valueHealth -= damage * 0.2; 
}

if(damageType == "EARTH")
{
    enemyHit.valueHealth -= damage * 2; 
}

if(damageType == "NEUTRAL")
{
    enemyHit.valueHealth -= damage; 
}

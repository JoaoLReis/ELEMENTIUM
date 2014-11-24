var damage = argument0;
var damageType = argument1;
var enemyHit = argument2;
var enemyType = enemyHit.type;

if(enemyType == "FIRE")
{
    damageEnemyFire(damage, damageType, enemyHit)
}

if(enemyType == "WATER")
{
    damageEnemyWater(damage, damageType, enemyHit)
}

if(enemyType == "EARTH")
{
    damageEnemyEarth(damage, damageType, enemyHit)
}

enemyHit.chaseByHit = true;
enemyHit.alarm[1] = 120;

var type = argument0;
var player = obj_player;

var healthInc = global.defaultHealth + global.curHealth * 10;
var attackInc = global.defaultAttack + global.curAttack * 0.5;

var defInc = 0;
for(var i = 0; i < global.curDefense; i++)
{
    defInc += (1 - defInc)*(0.085) 
}
var defence = global.defaultDefense + defInc;//(1 - global.valueDefense) * 0.075;

var projRangeInc = global.defaultProjRange + global.curProjRange * 2;


switch (type)
{
    case 0:
        global.valueHealth = healthInc;
        global.valueAttack = attackInc;
        global.valueDefense = defence;
        global.valueProjRange = projRangeInc;
        if(global.curFireStrength > 0)   
        {         
            IncreaseElement(2, player);
        }
        if(global.curWaterStrength > 0)                   
        {
            IncreaseElement(3, player);
        }
        if(global.curEarthStrength > 0)                  
        {
            IncreaseElement(1, player);
        }
        break;
    case 1:
        global.valueHealth = healthInc;
        break;
    case 2:
        global.valueAttack = attackInc;
        break;
    case 3:
        global.valueDefense = defence;
        break;
    case 4:
        global.valueProjRange = projRangeInc;
        break;
}

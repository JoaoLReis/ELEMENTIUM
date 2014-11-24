var type = argument0;
var player = obj_player;

switch (type)
{
    case 0:
        global.valueHealth = global.defaultHealth + global.curHealth * 50;
        global.valueAttack = global.defaultAttack + global.curAttack * 2;
        global.valueDefense = global.defaultDefense + global.curDefense;
        global.valueProjRange = global.defaultProjRange + global.curProjRange * 10;
        if(global.curFireStrength > 0)            
            IncreaseElement(2, player);
        if(global.curWaterStrength > 0)                   
            IncreaseElement(3, player);
        if(global.curEarthStrength > 0)                  
            IncreaseElement(1, player);
        break;
    case 1:
        global.valueHealth = global.defaultHealth + global.curHealth * 50;
        break;
    case 2:
        global.valueAttack = global.defaultAttack + global.curAttack * 2;
        break;
    case 3:
        global.valueDefense = global.defaultDefense + global.curDefense;
        break;
    case 4:
        global.valueProjRange = global.defaultProjRange + global.curProjRange * 10;
        break;
}

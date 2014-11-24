var type = argument0;

switch (type)
{
    case 0:
        global.valueHealth = global.defaultHealth + global.curHealth * 50;
        global.valueAttack = global.defaultAttack + global.curAttack * 2;
        global.valueDefense = global.defaultDefense + global.curDefense;
        global.valueProjRange = global.defaultProjRange + global.curProjRange * 10;
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

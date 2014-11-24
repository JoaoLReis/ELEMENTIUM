var player = argument0;


var type = irandom(3);
if(type == 0){
    global.curHealth +=1;
    UpdateStats(1);
    floatingMessage( "Max Health Increased!");
}
else if(type == 1){
    global.curAttack +=1;
    UpdateStats(2);
    floatingMessage( "Max Attack Increased!");
}
else if(type == 2){
    global.curDefense +=1;
    
    UpdateStats(3);
    floatingMessage( "Max Defense Increased!");
}
else if(type == 3){
    global.curProjRange +=1;
    UpdateStats(4);
    floatingMessage( "Max Projectile Range Increased!");
}
player.interacting = false;
with (interactable) { instance_destroy(); } 
    

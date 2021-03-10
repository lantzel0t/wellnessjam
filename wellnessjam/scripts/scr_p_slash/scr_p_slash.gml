
function scr_p_slash(){
	
	//Pixels away from player
	var swordDistance = 15;
	
	//Sword slash:
	//Calculate point in a circle
	if (slashInvert) {
		var swordTipX = x + sin((slashLength-slashLtimer)/slashLength*3)*swordDistance;
		var swordTipY = y + cos((slashLength-slashLtimer)/slashLength*3)*swordDistance;
	} else {
		var swordTipX = x + sin(slashLtimer/slashLength*3)*swordDistance;
		var swordTipY = y + cos(slashLtimer/slashLength*3)*swordDistance;
	}
	draw_circle(swordTipX,swordTipY,2,true);
	

	
	
	
	//Apply half friction
	if (abs(velX) > 0.001) velX -= sign(velX)*fValue/2;
	if (abs(velY) > 0.001) velY -= sign(velY)*fValue/2;
	
	if(slashLtimer<=0) {
		slashLtimer=slashLength;
		state=states.movement;
		slashInvert = !slashInvert;
	}
	slashLtimer--;
}
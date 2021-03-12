
function scr_p_slash(){
	
	//Pixels away from player
	var swordDistance = 15;
	
	//Sword slash:
	//Calculate point in a circle
	var dir = point_direction(x,y,mouse_x,mouse_y);
	
	if (slashInvert) {
		var swordTipX = x + sin(((slashLength-slashLtimer)/slashLength*3)+degtorad(dir))*swordDistance;
		var swordTipY = y + cos(((slashLength-slashLtimer)/slashLength*3)+degtorad(dir))*swordDistance;
	} else {
		var swordTipX = x + sin((slashLtimer/slashLength*3)+degtorad(dir))*swordDistance;
		var swordTipY = y + cos((slashLtimer/slashLength*3)+degtorad(dir))*swordDistance;
	}
	
	with collision_point(swordTipX,swordTipY,o_enemy, true,true) {
		hp--;
	}
	var dir = point_direction(x,y,swordTipX,swordTipY);
	var invertSprite = (slashInvert) ? -1 : 1;
	draw_sprite_ext(s_sword,4,x,y,1,invertSprite,dir,c_white,1);
	
	//draw_circle(swordTipX,swordTipY,2,true);

	
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
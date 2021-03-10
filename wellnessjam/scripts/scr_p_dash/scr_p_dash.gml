// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_dash(){
	velX = dashSpeed;
	if (place_meeting(x,y,o_muru1)) {
		var muru = instance_place(x,y,o_muru1);
		with (muru) {
			dir = point_direction(o_player.x,o_player.y,x,y);
			vel = o_player.dashKB;
			stunned = 20;
		}
	}
	
	
	if(dashLtimer<=0) {
		dashLtimer=dashLength;
		state=states.movement;
	}
	dashLtimer--;
}
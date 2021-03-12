// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_dash(){
	velX = dashSpeed;
	var dir = point_direction(x,y,mouse_x,mouse_y);
	velX = lengthdir_x(dashSpeed,dir);
	velY = lengthdir_y(dashSpeed,dir);
	
	if (place_meeting(x,y,o_enemy)) {
		var muru = instance_place(x,y,o_enemy);
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
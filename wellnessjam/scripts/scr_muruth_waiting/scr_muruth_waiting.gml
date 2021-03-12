// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_muruth_waiting(){
	if (point_distance(x, y, o_player.x, o_player.y)<visionLength 
		&& !collision_line( x, y, o_player.x, o_player.y, o_wall, true, true)) {
			//Is player left, right, up, or down?
			var direc = point_direction(x, y, o_player.x, o_player.y);
		    if(direc < 45 || direc >= 315){
		        // Player is right.
				chargeDir = 0;
		    }
		    else if(direc >= 45 && direc < 135){
		        // Player is up.
				chargeDir = 1;
		    }
		    else if(direc >= 135 && direc < 225){
		       // Player is left.
			   chargeDir = 2;
		    }
		    else if(direc >= 225 && direc < 315){
		        // Player is down.
				chargeDir = 3;
		    }
			state = statesMuruth.charging;
			

	}
}
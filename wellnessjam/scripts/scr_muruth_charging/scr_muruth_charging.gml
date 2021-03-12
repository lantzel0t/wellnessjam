// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_muruth_charging(){
	switch (chargeDir) {
		case 0:
			if (!place_meeting(x+moveSpeed,y,o_wall)) {
				x += moveSpeed
			} else {
				state = statesMuruth.waiting;
			}
			break;
		case 1:
			if (!place_meeting(x,y-moveSpeed,o_wall)) {
				y -= moveSpeed
			} else {
				state = statesMuruth.waiting;
			}
			break;
		case 2:
			if (!place_meeting(x-moveSpeed,y,o_wall)) {
				x -= moveSpeed
			} else {
				state = statesMuruth.waiting;
			}
			break;
		case 3:
			if (!place_meeting(x,y+moveSpeed,o_wall)) {
				y += moveSpeed
			} else {
				state = statesMuruth.waiting;
			}
			break;
	}
}
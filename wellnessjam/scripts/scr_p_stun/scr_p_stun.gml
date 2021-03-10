// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_stun(){
	if(stuntimer<=0) {
		stuntimer=stunLength;
		state=states.movement;
	}
	stuntimer--;
}
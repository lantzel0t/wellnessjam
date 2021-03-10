switch (state) {
	case states.movement: scr_p_movement(); break;
	case states.slashing: scr_p_slash(); break;
	case states.dashing: scr_p_dash(); break;
}
show_debug_message(state);

//We want to check collision however many times velocity exceeds our width
//This is likely broken and may cause issues when moving at high speeds
for (var i=0; i<abs(velX)/image_xscale; i++) {
	if (place_meeting(x + velX, y, o_wall)) {
		velX = 0;
		break;
	} else {
		x += velX;
	}
}

//Vertical collision/movement
for (var i=0; i<abs(velY)/image_yscale; i++) {
	if (place_meeting(x, y + velY, o_wall)) {
		velY = 0;
		break;
	} else {
		y += velY;
	}
}

draw_self();
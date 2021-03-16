switch (state) {
	case states.movement: scr_p_movement(); break;
	case states.slashing: scr_p_slash(); break;
	case states.dashing: scr_p_dash(); break;
	case states.stunned: scr_p_stun(); break;
}
//show_debug_message(state);

//We want to check collision however many times velocity exceeds our width
//This is likely broken and may cause issues when moving at high speeds
for (var i=0; i<abs(velX)/image_xscale; i++) {
	if (place_meeting(x + velX, y, o_wall) && instance_place(x + velX, y, o_wall).solid == true) {
		velX = 0;
		break;
	} else {
		x += velX;
	}
}

//Vertical collision/movement
for (var i=0; i<abs(velY)/image_yscale; i++) {
	if (place_meeting(x, y + velY, o_wall) && instance_place(x, y + velY, o_wall).solid == true) {
		velY = 0;
		break;
	} else {
		y += velY;
	}
}

scr_p_ik();

if (velX > 0) image_index = 0;
if (velX < 0) image_index = 1;


if (state == states.stunned) {
	draw_sprite_ext(s_player,0,x,y,1,1,0,c_white,0.5);
} else {
	draw_self();
}
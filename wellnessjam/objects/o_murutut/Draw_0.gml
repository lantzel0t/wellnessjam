/// @description Insert description here
// You can write your code in this editor


//When alive:
if (hp>0) {
	switch (state) {
		case statesMuruth.waiting: scr_muruth_waiting(); break;
		case statesMuruth.charging: scr_muruth_charging(); break;
		case statesMuruth.stunned: scr_p_stun(); break;
	}


	draw_self();
	//draw_point(targetX,targetY);
	
//When dead:
} else {
	image_index = 1;
	draw_self();
	vel = 0;
	if (!wallCreated) {
		wallCreated = true;
		var wall = instance_create_layer(x,y,"Collision",o_wall);
		wall.image_xscale = image_xscale;
		wall.image_yscale = image_yscale;
	}
}

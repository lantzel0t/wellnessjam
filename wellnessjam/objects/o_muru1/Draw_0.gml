/// @description Insert description here
// You can write your code in this editor


//When alive:
if (hp>0) {
	if (point_distance(x, y, o_player.x, o_player.y)<visionLength 
		&& !collision_line( x, y, o_player.x, o_player.y, o_wall, true, true )) {
		targetX = o_player.x;
		targetY = o_player.y;
	}

	var dist = point_distance(x, y, targetX, targetY);
	if !(stunned > 0) {
		if (dist > sprite_width/2 && dist < visionLength) {
			vel = moveSpeed;
			dir = point_direction(x,y,targetX,targetY);
		} else {
			vel = 0;
		}
	}
	stunned = clamp(stunned-1, -1, 9999);

	
	x += lengthdir_x(vel,dir);
	y += lengthdir_y(vel,dir);
	
	draw_self();
	draw_point(targetX,targetY);
	
//When dead:
} else {
	draw_sprite(s_dead,0,x,y);
	vel = 0;
	if (!wallCreated) {
		wallCreated = true;
		instance_create_layer(x,y,"Collision",o_wall);
	}
}

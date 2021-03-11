/// @description Insert description here
// You can write your code in this editor


//When alive:
if (hp>0) {
	if (point_distance(x, y, o_player.x, o_player.y)<visionLength 
		&& !collision_line( x, y, o_player.x, o_player.y, o_wall, true, true )) {
			var dist = point_distance(x, y, o_player.x, o_player.y);
			var direc = point_direction(x, y, o_player.x, o_player.y);
			var a = abs(lengthdir_x(dist,direc));
			var b = abs(lengthdir_y(dist,direc))
			targetX = (a < b) ? x : o_player.x;
			targetY = (a > b) ? y : o_player.y;
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

	
	if (limX) x += lengthdir_x(vel,dir);
	if (limY) y += lengthdir_y(vel,dir);
	
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

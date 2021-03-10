var muru = instance_place(x,y,o_muru1);
if (muru) {

	var dir = point_direction(muru.x, muru.y, x, y);
	velX = lengthdir_x(muru.knockback, dir);
	velY = lengthdir_y(muru.knockback, dir);
	state = states.stunned;
}
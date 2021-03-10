//Takes a start position, end position, segment length, and whether to invert
//Returns array of segment positions
function seg2IK(x1, y1, x2, y2, seglen, invert) {
	dist = min(point_distance(x1,y1,x2,y2)+(seglen/12), seglen*2);
	angle = point_direction(x1,y1,x2,y2);
	xFin = x1+lengthdir_x(dist,angle);
	yFin = y1+lengthdir_y(dist,angle);
	
	dist = point_distance(x1,y1,xFin,yFin);
	phi = arccos((dist*dist-seglen*seglen-seglen*seglen)/(-2*seglen*seglen));
	theta = pi-phi;
	omega = arcsin(seglen*sin(phi)/dist);
	
	angle = point_direction(x1,y1,xFin,yFin)-radtodeg(omega);
	xMid = x1+lengthdir_x(seglen, angle);
	yMid = y1+lengthdir_y(seglen, angle);
	
	return [x1,y1,xMid,yMid,xFin,yFin];
}
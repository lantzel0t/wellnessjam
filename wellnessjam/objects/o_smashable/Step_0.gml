//If become smashed, play animation
if (smashed) {
	if (image_index >= image_number) {
		image_speed = 0;
		solid = false;
		
	} else {
		image_speed = 1;
	}
}
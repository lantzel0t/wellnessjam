var inputH = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var inputV = keyboard_check(ord("S"))  - keyboard_check(ord("W"));
var inputSlash = mouse_check_button(mb_left);
var inputDash = mouse_check_button_pressed(mb_right);

//Movement TODO: BASE ON VECTOR
velX += inputH*moveSpeed;
velX = clamp(velX,-maxMoveSpeed,maxMoveSpeed);

velY += inputV*moveSpeed;
velY = clamp(velY,-maxMoveSpeed, maxMoveSpeed);
if (abs(velX) > 0.001) velX -= sign(velX)*fValue;
if (abs(velY) > 0.001) velY -= sign(velY)*fValue;

if (inputSlash && slashTimer<=0) {
	slashTimer = slashCD+slashLength;
	show_debug_message("slash!");
} 
slashTimer--;
slashTimer = clamp(slashTimer-1,-1,99999);

if (inputDash && dashTimer<=0) {
	dashTimer = dashCD+dashLength;
	show_debug_message("dash!");
	velX = dashSpeed;
} 
dashTimer--;
dashTimer = clamp(dashTimer-1,-1,99999);


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
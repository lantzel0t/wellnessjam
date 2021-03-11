/// @description Insert description here
// You can write your code in this editor

//Get camtarget the player is currently in
var target = collision_point(o_player.x, o_player.y, o_camtarget, false, true);
var cam = view_camera[0];
var camW = camera_get_view_width(cam);
var camH = camera_get_view_height(cam);

if (target) {
	switch (target.view) {
	default:
	case "centered":
		camera_set_view_size(cam,
			lerp(camW, target.sprite_width, lerpVal),
			lerp(camH, target.sprite_width, lerpVal));
		x = lerp(x, target.x, lerpVal);
		y = lerp(y, target.y, lerpVal);
		break;
	case "Valign"://long hallways
		camera_set_view_size(cam,
			lerp(camW, target.sprite_width, lerpVal),
			lerp(camH, target.sprite_width, lerpVal));
		x = lerp(x, o_player.x, lerpVal);
		y = lerp(y, target.y, lerpVal);
		break;
	case "Halign"://tall rooms
		camera_set_view_size(cam,
			lerp(camW, target.sprite_height, lerpVal),
			lerp(camH, target.sprite_height, lerpVal));
		x = lerp(x, target.x, lerpVal);
		y = lerp(y, o_player.y, lerpVal);
		break;
	}
} else {
	camera_set_view_size(cam,
		lerp(camW, baseZoom, lerpVal),
		lerp(camH, baseZoom, lerpVal));
	x = lerp(x, o_player.x, lerpVal);
	y = lerp(y, o_player.y, lerpVal);
}
//show_debug_message(camera_get_view_width(cam));

camera_set_view_pos(cam, round(x - (camW / 2)), round(y - (camH / 2)));
//camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_input(){
	inputH = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	inputV = keyboard_check(ord("S"))  - keyboard_check(ord("W"));
	inputSlash = mouse_check_button(mb_left);
	inputDash = mouse_check_button_pressed(mb_right);
}
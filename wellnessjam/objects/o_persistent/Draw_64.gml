/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_released(ord("T"))) timer=true;
if (timer) draw_text(20,20, current_time/1000);
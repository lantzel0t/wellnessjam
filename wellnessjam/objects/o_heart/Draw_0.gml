/// @description Insert description here
// You can write your code in this editor
draw_self();
if (flipped) {
	image_index = 1;
	draw_text(x+20,y,"Final time: " + string(finalTime/1000));
}
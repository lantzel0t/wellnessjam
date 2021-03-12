/// @description Insert description here
// You can write your code in this editor
targetX = x;
targetY = y;
vel = 0;
dir = 0;
wallCreated = false;
stunned = 0;
chargeDir = 0;

enum statesMuruth {
	waiting,
	charging,
	stunned,
}
state = statesMuruth.waiting;
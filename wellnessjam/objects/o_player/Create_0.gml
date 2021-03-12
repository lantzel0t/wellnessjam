velX = 0;
velY = 0;
moveSpeed = 0.2;
maxMoveSpeed = 1;

fValue = 0.1;
grav = 0.2;
grounded = false;

stunLength = 5;
stuntimer = stunLength;

//CD is cooldown between states
//Length is how long the state lasts
slashInvert = false;
slashCD = 10;
slashLength = 12;
slashCDtimer = slashCD;
slashLtimer = slashLength;

dashSpeed = 4;
dashKB = 2;
dashCD = 10;
dashLength = 2;
dashCDtimer = dashCD;
dashLtimer = dashLength;


foot1xC = x;
foot1yC = y;
foot2xC = x;
foot2yC = y;
stepWidth = 10;
footOffset = 6;



enum states {
	movement,
	slashing,
	dashing,
	stunned,
}
state = states.movement;
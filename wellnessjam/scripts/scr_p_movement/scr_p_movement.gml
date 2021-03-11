function scr_p_movement(){
	//Movement TODO: BASE ON VECTOR
	scr_input();
	
	velX += inputH*moveSpeed;
	velX = clamp(velX,-maxMoveSpeed,maxMoveSpeed);

	velY += inputV*moveSpeed;
	velY = clamp(velY,-maxMoveSpeed, maxMoveSpeed);
	if (abs(velX) > 0.001) velX -= sign(velX)*fValue;
	if (abs(velY) > 0.001) velY -= sign(velY)*fValue;
	

	
	if (hasSword && inputSlash && slashCDtimer<=0) {
		slashCDtimer = slashCD;
		state=states.slashing;
	} 
	slashCDtimer = clamp(slashCDtimer-1,-1,99999);

	if (hasDash && inputDash && dashCDtimer<=0) {
		dashCDtimer = dashCD;
		state=states.dashing;
	} 
	dashCDtimer = clamp(dashCDtimer-1,-1,99999);
}


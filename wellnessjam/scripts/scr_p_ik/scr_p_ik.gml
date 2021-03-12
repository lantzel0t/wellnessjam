// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_ik(){
	foot1xT = (ceil(x / stepWidth) * stepWidth) - footOffset-5;
	foot1yT = y + 8;
	foot1xC = lerp(foot1xC, foot1xT, 0.5);
	foot1yC = lerp(foot1yC, foot1yT + -abs(sin((foot1xT-foot1xC)/stepWidth)*20), 0.4);

	foot2xT = (ceil((x+footOffset)/stepWidth)*stepWidth) - footOffset-5;
	foot2yT = y + 8;
	foot2xC = lerp(foot2xC, foot2xT, 0.5);
	foot2yC = lerp(foot2yC, foot2yT + -abs(sin((foot2xT-foot2xC)/stepWidth)*20), 0.4);

	draw_set_color($C2501D);
	//ik1 = seg2IK(x,y,foot1xC,foot1yC,5);
	draw_line_width(x,y,foot1xC,foot1yC,3);
	//draw_line_width(ik1[2],ik1[3],ik1[4],ik1[5],3);
	
	//ik2 = seg2IK(x,y,foot2xC,foot2yC,5);
	draw_line_width(x,y,foot2xC,foot2yC,3);
	//draw_line_width(ik2[2],ik2[3],ik2[4],ik2[5],3);

}
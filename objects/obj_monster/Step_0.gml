if(!global.game_won){
	move_wrap(true, true, 100);
	// Adjusting scale based on score (grows with points)
	image_xscale = 1.0 + (points * 0.0025);
	image_yscale = 1.0 + (points * 0.0025);
}
else{
	speed = 0;
}
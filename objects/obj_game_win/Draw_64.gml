if(global.game_won) {
	// Display win message
	draw_set_font(fnt_win)
	pointsToInteger = int64(obj_game.points)
	draw_text(10,10,string(pointsToInteger))
	draw_text(920,10,string(instance_number(obj_monster)));
	draw_text(340,400, "VICTORY !");
	draw_text(340,470, "You are the bigest fongus");	
	draw_text(340,550, "Press 'R' to reload");
}
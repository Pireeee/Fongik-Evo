if(global.game_won) {
	// Display win message
	draw_set_font(fnt_win)
	var pointsToInteger = int64(obj_game.points)
	var time_in_seconds = obj_game.time_counter / room_speed;
	var minutes = floor(time_in_seconds / 60);
	var seconds = time_in_seconds mod 60;
	draw_text(10,10,string(pointsToInteger))
	draw_text(920,10,string(instance_number(obj_monster)));
	draw_text(340,400, "VICTORY !");
	draw_text(340,470, "You are the bigest fongus");	
	draw_text(340,550, "Press 'R' to reload");
	draw_text(700,900,"time : "+ string(minutes)+"m "+string(int64(seconds))+"s");
}
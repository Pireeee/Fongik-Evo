if(!global.game_won){
	draw_set_font(fnt_score)
	pointsToInteger = int64(points)
	draw_text(10,10,string(pointsToInteger))
	draw_text(920,10,string(instance_number(obj_monster)));
}
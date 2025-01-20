image_xscale = 1.0 + (obj_game.points * 0.01);
image_yscale = 1.0 + (obj_game.points * 0.01);

if keyboard_check(ord("Z")){
	obj_player.y-=2;
}if keyboard_check(ord("S")){
	obj_player.y+=2;
}if keyboard_check(ord("Q")){
	obj_player.x-=2;
}if keyboard_check(ord("D")){
	obj_player.x+=2;
}

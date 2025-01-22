if keyboard_check(ord("Z")){
	obj_player.y-= playerSpeed;
}if keyboard_check(ord("S")){
	obj_player.y+= playerSpeed;
}if keyboard_check(ord("Q")){
	obj_player.x-= playerSpeed;
}if keyboard_check(ord("D")){
	obj_player.x+= playerSpeed;
}

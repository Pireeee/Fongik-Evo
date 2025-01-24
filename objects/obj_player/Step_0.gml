if(!global.game_won){
	if keyboard_check(ord("Z")){
		obj_player.y-= playerSpeed;
		obj_game.points = max(0, obj_game.points - score_decrement);
	}if keyboard_check(ord("S")){
		obj_player.y+= playerSpeed;
		obj_game.points = max(0, obj_game.points - score_decrement);
	}if keyboard_check(ord("Q")){
		obj_player.x-= playerSpeed;
		obj_game.points = max(0, obj_game.points - score_decrement);
	}if keyboard_check(ord("D")){
		obj_player.x+= playerSpeed
		obj_game.points = max(0, obj_game.points - score_decrement);
	}


	// Adjusting scale based on score (grows with points)
	image_xscale = 1.0 + (obj_game.points * 0.0025);
	image_yscale = 1.0 + (obj_game.points * 0.0025);

	// Ajoute la trainee derière le personnage
	if (point_distance(last_trail_x, last_trail_y, x, y) > trail_spacing) {
	    // Add current position to the trail list
	    ds_list_add(trail_list, [x, y]);

	    // Update last position to avoid excessive points being added
	    last_trail_x = x;
	    last_trail_y = y;
	}

	// Vérifier si les points sont tombés à zéro ou en dessous pour chaque instance
	if (obj_game.points <= 0) {
		global.game_lost = true
	    instance_destroy();  // Détruire le joueur si ses points sont à 0 ou moins
		audio_stop_sound(snd_music)
		audio_play_sound(snd_game_over, 1, false)
	}
}

// Ajustement pour tenir compte de toute la largeur du sprite (y compris l'échelle)
var half_sprite_width_scaled = sprite_get_width(sprite_index) * image_xscale / 2;
var half_sprite_height_scaled = sprite_get_height(sprite_index) * image_yscale / 2;

// Empêcher le joueur de sortir de la room horizontalement
if (x < half_sprite_width_scaled) {
    x = half_sprite_width_scaled;
} else if (x > room_width - half_sprite_width_scaled) {
    x = room_width - half_sprite_width_scaled;
}

// Empêcher le joueur de sortir de la room verticalement
if (y < half_sprite_height_scaled) {
    y = half_sprite_height_scaled;
} else if (y > room_height - half_sprite_height_scaled) {
    y = room_height - half_sprite_height_scaled;
}

// Restore the player sprite when not being eaten
if (sprite_index != spr_player) {
    sprite_index = spr_player;
}






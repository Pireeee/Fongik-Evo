if(!global.game_won && !global.game_lost){
	// Update camera size dynamically based on points
	zoom_factor = 1 + (points * 0.0005);

	camera_width = clamp(base_width * zoom_factor, base_width, 4000);
	camera_height = clamp(base_height * zoom_factor, base_height, 4000);

	camera_set_view_size(view_camera[0], camera_width, camera_height);

	// Center the camera on the player smoothly
	var smooth_factor = 0.1;
	target_x = obj_player.x - camera_width / 2;
	target_y = obj_player.y - camera_height / 2;

	target_x = lerp(camera_get_view_x(view_camera[0]), target_x, smooth_factor);
	target_y = lerp(camera_get_view_y(view_camera[0]), target_y, smooth_factor);

	camera_set_view_pos(view_camera[0], target_x, target_y);
}

// Check if all monsters are destroyed or points exceed limit
if ((instance_number(obj_monster_simple) == 0 || points > 10000) && !global.game_won) {
    global.game_won = true;
    
    // Set the camera to full room size to show everything
    camera_set_view_size(view_camera[0], room_width, room_height);
    
    // Center camera to show the whole room
    camera_set_view_pos(view_camera[0], room_width / 2 - room_width / 2, room_height / 2 - room_height / 2);
	
	audio_play_sound(snd_game_win, 1, false);
}

// Incrémentation du compteur si le jeu n'est pas terminé
if (!global.game_won) {
    time_counter += 1;
}

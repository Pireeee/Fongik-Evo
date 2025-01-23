sound_choice = random_range(1, 2)

// Mise à jour des points et des échelles
if (obj_game.points < other.points) {
	if !(audio_is_playing(snd_alien_fish2) || audio_is_playing(snd_ghost_chicken2)) && global.game_won == false {
	
	if sound_choice == 1 {
		audio_play_sound(snd_alien_fish2, 1, false)
	} else {
		audio_play_sound(snd_ghost_chicken2, 1, false)
	}
	
	}
    obj_game.points -= point_decrease;
    other.points += point_increase;
} else if (obj_game.points > other.points) && global.game_won == false {
	if !(audio_is_playing(snd_player_eating_monsters) || audio_is_playing(snd_ghost_chicken)) && global.game_won == false {
		if sound_choice == 1 {
			audio_play_sound(snd_player_eating_monsters, 1, false);
		} else {
			audio_play_sound(snd_ghost_chicken, 1, false);
		}
	}
    obj_game.points += point_increase;
    other.points -= point_decrease * 3.5;
}

if (other.points <= 0) {
    instance_destroy(other);  // Détruire l'autre entité si ses points sont à 0 ou moins
}



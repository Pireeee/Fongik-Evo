// Mise à jour des points et des échelles
if (obj_game.points < other.points) {
	if !audio_is_playing(snd_eating) && global.game_won == false {
	audio_play_sound(snd_eating, 1, false)
	}
    obj_game.points -= point_decrease;
    other.points += point_increase;
} else if (obj_game.points > other.points) && global.game_won == false {
	if !audio_is_playing(snd_player_eating) && global.game_won == false {
	audio_play_sound(snd_player_eating, 1, false);
	}
    obj_game.points += point_increase;
    other.points -= point_decrease * 3.5;
}

if (other.points <= 0) {
    instance_destroy(other);  // Détruire l'autre entité si ses points sont à 0 ou moins
}



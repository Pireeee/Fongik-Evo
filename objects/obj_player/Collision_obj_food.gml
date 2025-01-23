obj_game.points += 10 ;

if obj_game.points < 500 {
	audio_play_sound(snd_blop, 1, false);
} else if obj_game.points < 1000 {
	audio_play_sound(snd_blop_mid, 1, false);
} else {
	audio_play_sound(snd_blop_big, 1, false);
}



// Random sound choice: 0 or 1
random_set_seed(date_current_datetime());
var sound_choice = irandom(1);
show_debug_message(sound_choice);

// Determine sound to play based on sound_choice
var sound_to_play_lose = (sound_choice == 1) ? snd_ghost_chicken2 : snd_ghost_chicken;
var sound_to_play_win = (sound_choice == 1) ? snd_alien_fish : snd_alien_fish2;

// Exit if the game is won
if (global.game_won) {
    return;
}

// Track player state and handle sprite changes
if (obj_game.points < other.points) {
    var is_sound_playing = audio_is_playing(snd_ghost_chicken) || audio_is_playing(snd_ghost_chicken2);
    if (!is_sound_playing) {
        audio_play_sound(sound_to_play_lose, 1, false);
    }

    // Change player sprite when eaten
    if (obj_player.sprite_index != spr_player_hurt) {
        obj_player.sprite_index = spr_player_hurt;
    }

    obj_game.points -= point_decrease;
    other.points += point_increase;
} 
else if (obj_game.points > other.points) {
    var is_sound_playing_win = audio_is_playing(snd_alien_fish) || audio_is_playing(snd_alien_fish2);
    if (!is_sound_playing_win) {
        audio_play_sound(sound_to_play_win, 1, false);
    }

    obj_game.points += point_increase;
    other.points -= point_decrease * 3.5;
}

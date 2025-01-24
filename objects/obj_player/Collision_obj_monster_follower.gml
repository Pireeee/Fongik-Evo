random_set_seed(date_current_datetime());
var sound_choice = irandom(1);

// Determine sound to play based on sound_choice
var sound_to_play_lose = (sound_choice == 1) ? snd_ghost_chicken2 : snd_ghost_chicken;

// Exit if the game is won
if (global.game_won) {
    return;
}

if(obj_game.points > 1500){ 
	obj_game.points -= 0.5
	other.points += 0.5
}
else{
	obj_game.points -= 1
	other.points -= 1
}


// Change player sprite when eaten
if (obj_player.sprite_index != spr_player_hurt) {
    obj_player.sprite_index = spr_player_hurt;
}
// Événement Step de obj_game_over
if keyboard_check_pressed(ord("R")) {
    game_restart();  // Redémarrer le jeu
}
if keyboard_check_pressed(vk_escape) {
    game_end();  // Quitter le jeu
}

// Draw all stored trail positions
for (var i = 0; i < ds_list_size(global.monster_trails); i++) {
    var pos = global.monster_trails[| i];
    var trail_x = pos[0];
    var trail_y = pos[1];
	
    // Définir une transparence constante pour tous les segments de trail
    var alpha = 0.1;  // 50% de transparence pour tous les segments

    // Dessiner un sprite pour chaque segment de trail avec une transparence constante
    draw_sprite_ext(spr_trail_monster, 0, trail_x, trail_y, 1, 1, 0, c_white, alpha);
}

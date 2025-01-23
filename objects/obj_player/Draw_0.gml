// Début du dessin des positions de trail stockées
for (var i = 0; i < ds_list_size(trail_list); i++) {
    var pos = trail_list[| i];
    var trail_x = pos[0];
    var trail_y = pos[1];

    // Définir une transparence constante pour tous les segments de trail
    var alpha = 0.5;  // Par exemple, 50% de transparence pour tous les segments

    // Dessiner un sprite pour chaque segment de trail avec une transparence constante
    draw_sprite_ext(spr_trail, 0, trail_x, trail_y, 1, 1, 0, c_white, alpha);
}

// Dessiner le joueur
draw_self();

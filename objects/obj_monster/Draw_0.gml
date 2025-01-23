draw_self();  // Dessine le sprite du monstre

// Définir la police et la couleur du texte
draw_set_font(fnt_monster);  // Assurez-vous que la police est correctement définie
draw_set_colour(c_white);  // La couleur du texte

// Calculer la position du texte
pointsToInteger = int64(points)
var text = string(pointsToInteger);  // Convertir les points en texte

// Dessiner le texte
draw_text(x + image_xscale, y, text);

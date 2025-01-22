// Définition des facteurs de modification
point_increase = 0.5;
point_decrease = 0.5;
scale_increase = 0.05;
scale_decrease = 0.01;
min_scale = 0.1;  // Échelle minimale pour éviter des valeurs négatives
max_scale = 5.0;  // Échelle maximale pour le contrôle

// Fonctions pour ajuster les échelles et les points
function adjust_scale(instance, amount) {
    instance.image_xscale = clamp(instance.image_xscale + amount, min_scale, max_scale);
    instance.image_yscale = clamp(instance.image_yscale + amount, min_scale, max_scale);
}

// Mise à jour des points et des échelles
if (obj_game.points < other.points) {
    obj_game.points -= point_decrease;
    other.points += point_increase;
    adjust_scale(obj_player, -scale_decrease);
    adjust_scale(other, 0.005);
} else if (obj_game.points > other.points) {
    obj_game.points += point_increase;
    other.points -= point_decrease * 3.5;
    adjust_scale(obj_player, scale_increase);
    adjust_scale(other, -scale_decrease);
}

// Vérifier si les points sont tombés à zéro ou en dessous pour chaque instance

if (obj_game.points <= 0) {
    instance_destroy();  // Détruire le joueur si ses points sont à 0 ou moins
}

if (other.points <= 0) {
    instance_destroy(other);  // Détruire l'autre entité si ses points sont à 0 ou moins
}

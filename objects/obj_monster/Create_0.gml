// Pourcentage de monstres qui devraient être petits
var percentage_small = 30;  // 30% des monstres sont petits

// Tirer au sort si ce monstre sera petit
if (random(100) < percentage_small) {
    // Attribuer des points dans la gamme basse pour les petits monstres
    points = random_range(50, 150);  // Assurez-vous que cette gamme est suffisante pour que le joueur puisse les manger
} else {
    // Attribuer des points dans la gamme normale pour les autres monstres
    points = random_range(200, 1000);
}
points = random_range(100, 1000);
speed = 0.75
direction = random(360)
image_angle = random(360);
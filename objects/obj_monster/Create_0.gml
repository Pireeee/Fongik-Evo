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

// Set an initial random direction
direction = random(360);
speed = 0.75;

// Set the first random direction change
alarm[0] = irandom_range(60, 180);  // Change direction every 1 to 3 seconds



// Create a list to store trail positions
trail_list = ds_list_create();

// Define trail settings
trail_spacing = 5;      // Add new trail position every 5 pixels
last_trail_x = x;
last_trail_y = y;
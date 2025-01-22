// Create a list to store trail positions
trail_list = ds_list_create();

// Define trail settings
trail_spacing = 5;      // Add new trail position every 5 pixels
last_trail_x = x;
last_trail_y = y;
playerSpeed = 2;
score_decrement = 0.1;

image_xscale = 3;
image_yscale = 3;

// Définition des facteurs de modification
point_increase = 0.5;
point_decrease = 0.5;
scale_increase = 0.05;
scale_decrease = 0.01;
min_scale = 0.1;  // Échelle minimale pour éviter des valeurs négatives
max_scale = 7.0;  // Échelle maximale pour le contrôle
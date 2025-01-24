// Set an initial random direction
direction = random(360);
speed = random_range(0.5,1.5);

points = 200;

// Set the first random direction change
alarm[0] = irandom_range(60, 180);  // Change direction every 1 to 3 seconds


// Create a list to store trail positions
trail_list = ds_list_create();

// Define trail settings
trail_spacing = 5;      // Add new trail position every 5 pixels
last_trail_x = x;
last_trail_y = y;


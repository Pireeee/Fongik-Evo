if (!global.game_won) {
    move_wrap(true, true, 100);

    // Adjusting scale based on score (grows with points)
    image_xscale = 1.0 + (points * 0.0025);
    image_yscale = 1.0 + (points * 0.0025);

    // Add trail effect globally
    if (point_distance(last_trail_x, last_trail_y, x, y) > trail_spacing) {
        ds_list_add(global.monster_trails, [x, y]);

        // Update last position to avoid excessive points being added
        last_trail_x = x;
        last_trail_y = y;
    }
	image_angle = direction
} else {
    speed = 0;
}

// Destroy the other instance if points reach zero or below
if (points <= 0) {
    instance_destroy();
}
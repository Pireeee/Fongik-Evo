// Draw all stored trail positions
for (var i = 0; i < ds_list_size(trail_list); i++) {
    var pos = trail_list[| i];
    var trail_x = pos[0];
    var trail_y = pos[1];

    // Draw a small yellow rectangle for each trail segment
    draw_rectangle_color(trail_x - 2, trail_y - 2, trail_x + 2, trail_y + 2, c_yellow, c_yellow, c_yellow, c_yellow, false);
}

// Draw the player
draw_self();
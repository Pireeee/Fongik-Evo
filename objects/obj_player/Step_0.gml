// Adjusting scale based on score (grows with points)
image_xscale = 1.0 + (obj_game.points * 0.0025);
image_yscale = 1.0 + (obj_game.points * 0.0025);

// Movement controls with slower score decrease
var move_speed = 2;
var score_decrement = 0.1;  // Slower decrement

if keyboard_check(ord("Z")) {
    obj_player.y -= move_speed;
	obj_game.points = max(0, obj_game.points - score_decrement);
}
if keyboard_check(ord("S")) {
    obj_player.y += move_speed;
	obj_game.points = max(0, obj_game.points - score_decrement);
}
if keyboard_check(ord("Q")) {
    obj_player.x -= move_speed;
	obj_game.points = max(0, obj_game.points - score_decrement);
}
if keyboard_check(ord("D")) {
    obj_player.x += move_speed;
	obj_game.points = max(0, obj_game.points - score_decrement);
}

// Add a trail position only when moving a sufficient distance
if (point_distance(last_trail_x, last_trail_y, x, y) > trail_spacing) {
    // Add current position to the trail list
    ds_list_add(trail_list, [x, y]);

    // Update last position to avoid excessive points being added
    last_trail_x = x;
    last_trail_y = y;
}

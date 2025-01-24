// Inherit the parent event
event_inherited();

// Get player instance
var player = instance_nearest(x, y, obj_player);

// Check if player exists and is within sight range
if (player != noone && point_distance(x, y, player.x, player.y) <= sight_range) {
        player_in_sight = true;

} else {
    player_in_sight = false;
}

// Move towards the player if in sight
if (player_in_sight) {
    var direction_to_player = point_direction(x, y, player.x, player.y);
    motion_set(direction_to_player, speed);
}


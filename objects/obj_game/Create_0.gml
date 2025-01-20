//variables
points = 0;
base_height = 300;
base_width = 300;

// Update camera size dynamically
var zoom_factor = 1+(points*0.01)

// Update camera size dynamically
zoom_factor = clamp(zoom_factor, 1.0, 3.0) // min 1x, max 3x zoom

// Update camera size dynamically
camera_set_view_size(view_camera[0],base_width/zoom_factor,base_height/zoom_factor);

// Center the camera on the player
var target_x = obj_player.x - (base_width / zoom_factor) / 2;
var target_y = obj_player.y - (base_height / zoom_factor) / 2;
camera_set_view_pos(view_camera[0], target_x, target_y);
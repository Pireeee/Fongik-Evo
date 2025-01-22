// Update camera size dynamically
// var zoom_factor = 1+(points* 0.002);

camera_width = clamp(camera_width, base_width, 2000);
camera_height = clamp(camera_height, base_height, 2000);


camera_set_view_size(view_camera[0],camera_width,camera_height);

// Center the camera on the player
var smooth_factor = 0.1;
target_x = lerp(camera_get_view_x(view_camera[0]), target_x, smooth_factor);
target_y = lerp(camera_get_view_y(view_camera[0]), target_y, smooth_factor);

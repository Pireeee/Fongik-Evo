// Update camera size dynamically
var zoom_factor = 1+(points*0.005)

camera_width = base_width*zoom_factor
camera_width = clamp(camera_width,0,2000)
camera_height = base_height*zoom_factor
camera_height = clamp(camera_height,0,2000)

camera_set_view_size(view_camera[0],camera_width,camera_height);

// Center the camera on the player
var target_x = obj_player.x - camera_width / 2 ;
var target_y = obj_player.y - camera_height /2 ;
camera_set_view_pos(view_camera[0], target_x, target_y);
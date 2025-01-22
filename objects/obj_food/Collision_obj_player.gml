instance_destroy();

cam = view_camera[0];
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);
cam_width = camera_get_view_width(cam);
cam_height = camera_get_view_height(cam);
margin = 32;  // Marge de 32 pixels autour de la caméra

// Vérifie si le nombre de nourritures est inférieur à 25
if (instance_number(obj_food) < 25)
{
	x_spawn = 0;
	y_spawn = 0;
	valid_spawn = false;

while (!valid_spawn) {
    x_spawn = random(room_width);
    y_spawn = random(room_height);

    // Vérifier si les coordonnées sont en dehors de la zone de la caméra
    if (x_spawn < cam_x - margin || x_spawn > cam_x + cam_width + margin ||
        y_spawn < cam_y - margin || y_spawn > cam_y + cam_height + margin) {
        valid_spawn = true;
    }
}

    // Calcule une position x et y aléatoire dans la room
    new_x = random(room_width);
    new_y = random(room_height);

    // Crée une nouvelle instance de nourriture à cette position
    instance_create_layer(new_x, new_y, "Instances", obj_food);
}
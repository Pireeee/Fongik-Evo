instance_destroy();

// Vérifie si le nombre de nourritures est inférieur à 25
if (instance_number(obj_food) < 25)
{


    // Calcule une position x et y aléatoire dans la room
    new_x = random(room_width);
    new_y = random(room_height);

    // Crée une nouvelle instance de nourriture à cette position
    instance_create_layer(new_x, new_y, "Instances", obj_food);
}
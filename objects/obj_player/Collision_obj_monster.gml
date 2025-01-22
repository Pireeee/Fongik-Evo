if obj_game.points < other.points
{
	obj_game.points -= 0.85;
	other.points += 0.5
	image_xscale -= 0.01
	image_yscale -= 0.01
	other.image_xscale += 0.005
	other.image_yscale += 0.005
} else if obj_game.points > other.points {
	obj_game.points += 10
	other.points -= 2
	image_xscale += 0.05
	image_yscale += 0.05
	other.image_xscale -= 0.005
	other.image_yscale -= 0.005
}
if (global.game_won) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);

	// Semi-transparent overlay effect
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
	draw_set_alpha(1);

	// Display win message
	draw_text(display_get_width() / 2, display_get_height() / 2, "You Win!\nPress R to Restart");
}
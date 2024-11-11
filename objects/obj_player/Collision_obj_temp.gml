if(!invulnerable && !player_knockback){
	image_alpha = 0.5;
	player_knockback = true;
	x -= direction_x * 6;
	y -= direction_y * 6;
}
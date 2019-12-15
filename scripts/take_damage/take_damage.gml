/// @description take_damage
if (state != player.hurt) {
	state = player.hurt;
	audio_play_sound(a_ouch, 10, false);
	//image_blend = make_color_rgb(220,150,150);
	image_blend = make_color_rgb(127,127,127);
	yspeed = -6;   // le player bondit vers le haut
	//xspeed = (sign(x - other.x) * 8); // le player rebondit contre son ennemi
	// le player rebondit contre son ennemi
	xspeed = -image_xscale * 8;
	move(o_solid);
	// decrease hp
	if (instance_exists(o_player_stats)) {
		o_player_stats.hp -= 1;
	}
}
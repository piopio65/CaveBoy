/// @description Move To The Next Level
if (up && other.visible && on_floor) {
	y = yprevious;
	state = player.door;
	// play sound exist
	if (!audio_is_playing(a_exit)) {
		audio_play_sound(a_exit, 4, false);
		audio_stop_sound(a_jump);
	}
}

// si on est dans la salle du boss on a fini
if (room == r_boss) {
	game_restart();
}
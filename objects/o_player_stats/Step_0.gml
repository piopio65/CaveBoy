/// @description  Commencer le jeu
if (keyboard_check_pressed(vk_space) && room == r_title) {
	room_goto(r_one);
	if (audio_exists(mus_title)) {
		alarm[0] = title_extinction_delay;
		audio_sound_gain(mus_title,0,title_extinction_delay);
		
		mus_cave = audio_play_sound(a_cave,10,true);
		if (audio_exists(mus_cave)) {
			audio_sound_gain(mus_cave,0,0);
			audio_sound_gain(mus_cave,0.5,title_extinction_delay);
		}
	}
}

// Change audio music if not playing a music
if (!audio_is_playing(mus_title) && !audio_is_playing(mus_cave)) {
	audio_play_sound(mus_cave,10,true);
	audio_sound_gain(mus_cave,0,0);
	audio_sound_gain(mus_cave,0.5,title_extinction_delay);
}

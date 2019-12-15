/// @description  Initialisation variables
hp = 10;
max_hp = 10;
sapphires = 0;

mus_title = noone;
mus_cave = noone;

title_extinction_delay = 3000   // temps d'arret pour la musique d'intro

//show_debug_message(string(camera_get_view_width(view_camera[0])));
//show_debug_message(string(camera_get_view_height(view_camera[0])));

// pour ajuster correctement le texte d'intro au milieu 
display_set_gui_size(camera_get_view_width(view_camera[0]),
					 camera_get_view_height(view_camera[0]));
					 
// play intro music
mus_title = audio_play_sound(a_title,10,false);

show_debug_message("W : " + string(camera_get_view_width(view_camera[0])));
/// @description Dessin du GUI

if (room == r_title) {
	draw_set_halign(fa_center);
	draw_set_font(f_title);
	draw_text_color(room_width / 2 + 4, 24 + 6,"Cave Boy",c_black,c_black,c_black,c_black,1);
	draw_text_color(room_width / 2, 24,"Cave Boy",c_white,c_white,c_white,c_white,1);
	//
	draw_set_font(f_start);
	draw_text_color(room_width / 2 + 2, room_height - 48 + 2, "Pressez Espace pour jouer",c_black,c_black,c_black,c_black,0.7);
	draw_text_color(room_width / 2, room_height - 48, "Pressez Espace pour jouer",c_white,c_white,c_white,c_white,0.5);
	

}
if (room != r_title) {
	// draw health
	for (var i = 0; i < hp; i++) {
		draw_sprite_ext(s_heart,0,( i * sprite_get_width(s_heart) + 15),15,1,1,0,c_white,1); 
								   
	}
	// draw score
	draw_set_font(f_score);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_text(camera_get_view_width(view_camera[0]) - 5,string_height("S") + 3,"SCORE");
	draw_text(camera_get_view_width(view_camera[0]) - 5,string_height("S") + string_height("0") - 3,string(sapphires));

}
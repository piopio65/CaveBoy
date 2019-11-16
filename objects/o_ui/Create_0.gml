/// @description 
//show_debug_message("w: " + string(w_fps) + "  h: " + string(h_fps));

#region
	global.wx = camera_get_view_width(view_camera[0]);
	global.wy = camera_get_view_height(view_camera[0]);
	display_set_gui_size(global.wx, global.wy);
#endregion
#region
	draw_set_font(f_start)
#endregion

show_debug_message("Create o_ui wwiev: " + string(global.wx) + "  hwiew: " + string(global.wy));
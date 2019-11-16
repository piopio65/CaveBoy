/// @description 
#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

// center camera on player with a smooth movement
if instance_exists(o_player) {
	var _x = clamp(o_player.x - view_width / 2, 0, room_width - view_width);
	var _y = clamp(o_player.y - view_height / 2, 0, room_height - view_height);
	
	var _view_cur_x = camera_get_view_x(view);
	var _view_cur_y = camera_get_view_y(view);
	var _spd = 0.1;
	
	var _resx;
	var _resy;
	
	if (abs(_view_cur_x - _x) <= 1) 
		_resx = _view_cur_x;
	else 
		_resx = lerp(_view_cur_x,_x,_spd);
	
	
	if (abs(_view_cur_y - _y) <= 1)
		_resy = _view_cur_y;
	else 
		_resy = lerp(_view_cur_y,_y,_spd)
	
	camera_set_view_pos(view, _resx, _resy);
}
//show_debug_message("End Step o_camera")
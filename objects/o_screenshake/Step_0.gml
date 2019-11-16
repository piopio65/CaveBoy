/// @description 
if (instance_exists(o_player)) {
	var _dx = random_range(-intensity, intensity);
	var _dy = random_range(-intensity, intensity);
	var _xcam = clamp(o_player.x - (global.wx / 2) + _dx, -abs(_dx), room_width - global.wx + abs(_dx));
	var _ycam = clamp(o_player.y - (global.wy / 2) + _dy, -abs(_dy), room_height - global.wy + abs(_dy));
	camera_set_view_pos(view_camera[0],_xcam,_ycam);	
}
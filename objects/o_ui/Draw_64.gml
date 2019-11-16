/// @description 
#region // draw fps
draw_set_halign(fa_right);
var _fps_spr_width = sprite_get_width(s_fps);
var _fps_spr_height = sprite_get_height(s_fps);
var _fps_x = global.wx - _fps_spr_width - 8;
var _fps_y = 8;
draw_sprite(s_fps,0,_fps_x, _fps_y);
draw_set_color(c_white);
draw_text(_fps_x + _fps_spr_width - 3, _fps_y,"FPS : "+ string(fps));

draw_set_halign(fa_left);
#endregion
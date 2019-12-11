/// @description 
with (instance_create_layer(x + random_range(-sprite_width / 2,sprite_width / 2), y - sprite_height / 2, "Lava", o_particle)) {
	image_blend = c_yellow;
}
alarm[0] = random_range(10,20);
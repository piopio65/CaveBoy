/// @description Move up and down the Sapphire
move_timer ++;
y += move_amount;
image_xscale -= scale_amount;
image_yscale -= scale_amount;
if (move_timer > move_max_timer) {
	move_timer = 0;
	move_amount = -move_amount;
	scale_amount = -scale_amount;
}
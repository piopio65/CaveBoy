/// @description 
var collision_object = argument0;

// ckecker collision horizontale
if (place_meeting(x + xspeed, y, collision_object)) {
	while (!place_meeting(x + sign(xspeed), y, collision_object)) {
		x += sign(xspeed);
		//show_debug_message("colliding...");
	}
	xspeed = -(xspeed / 4);
}

// checker collision verticale
if (place_meeting(x, y + yspeed, collision_object)) {
	while (!place_meeting(x, y + sign(yspeed),collision_object)) {
		y += sign(yspeed);
	}
	yspeed = -(yspeed / 4);
	if (abs(yspeed) < 2) {
		yspeed = 0;
	}
}

x += xspeed;
y += yspeed;

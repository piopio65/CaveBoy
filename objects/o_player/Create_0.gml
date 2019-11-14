/// @description Init Variables player
max_speed = 4;
xspeed = 0;
yspeed = 0;
acceleration = 1;
gravity_acceleration = 0.5;
jump_height = -9;
grab_width = 18;


// player state machines
enum player {
	moving,
	ledge_grab,
	door,
	hurt,
	death
}

// etat du joueur au depart
state = player.moving;
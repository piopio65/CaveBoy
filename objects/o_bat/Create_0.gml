/// @description Initialize Bat

// Movement vars
xspeed = 0;
yspeed = 0;
max_speed = 1.5;

enum bat {
	idle,
	chase
}

state = bat.idle;
// Distance du joueur à partir de laquelle la bat reagit
sight = 180;
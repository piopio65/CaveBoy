/// @description Colliding with an Enemy

// Ckeck si nous sommes au-dessus
var above_enemy = (y - yspeed < other.y);
var falling = yspeed > 0; 
if (above_enemy && (falling || state = player.ledge_grab)) {
	// Garder le joueur au dessus de l'ennemi
	if (!place_meeting(x,yprevious,o_solid)) {
		y = yprevious;
	}
	// se rapprocher le plus possible de lui
	while (!place_meeting(x,y + 1,other)) {
		y++;
	}
	// detruire l'ennemi
	with(other){
		instance_destroy();
	}
	// Bounce off the Enemy
	yspeed = -(16/3);
	audio_play_sound(a_step, 6, false);
	
} else {
	take_damage();
}
/// @description Controle de l'etat du joueur

#region			 set up controls player
right	= keyboard_check(vk_right);
left	= keyboard_check(vk_left);
up		= keyboard_check(vk_up);
down	= keyboard_check(vk_down);
up_release = keyboard_check_released(vk_up); // pour sauter plus ou moins haut
#endregion
#region			 state machine
switch (state) {
#region		 deplacement joueur
	case player.moving:
		if (xspeed == 0) {
			sprite_index = s_player_idle;
		} else {
			sprite_index = s_player_walk;
		}
		
		// verifier si le joueur touche le sol
		if (!place_meeting(x, y + 1, o_solid)) { // le perso n'est pas sur le sol 
												 // il est en train de tomber
			yspeed += gravity_acceleration;
			sprite_index = s_player_jump;
			image_index = (yspeed > 0);
			
			// controler la hauteur du saut
			if (up_release && yspeed < -6) {
				yspeed = -3;
			}
		} else { // le perso est au sol
			yspeed = 0;
			
			// Code du saut, on est au sol
			if (up) {
				yspeed = jump_height;
				audio_play_sound(a_jump, 5, false);
			}
			
		}
	
		// changer le sens du sprite
		if (xspeed != 0) {
			image_xscale = sign(xspeed);
		}
		if (right || left) {
			xspeed += (right - left) * acceleration;
			xspeed = clamp(xspeed, -max_speed, max_speed);
			
		} else {
			apply_friction(acceleration);
		}
		
		// play sound when landing
		if (place_meeting(x, y + yspeed + 1, o_solid) && yspeed > 0) {
			audio_play_sound(a_step, 6, false);
		}
		// se deplacer
		move(o_solid);
		
		// checker si on peut s'accrocher
		var falling = y - yprevious > 0
		var wasnt_wall = !position_meeting(x + grab_width * image_xscale, yprevious, o_solid);
		var is_wall = position_meeting(x + grab_width * image_xscale, y, o_solid);
		if (falling && wasnt_wall && is_wall)
		{
			xspeed = 0;
			yspeed = 0;
			
			// se coller contre la paroi verticale (le rebord)
			while (!place_meeting(x + image_xscale, y, o_solid)) {
				x += image_xscale;
			}
			
			// puis remonter le long de la paroi jusqu'a ce que le 'point' (au milieu du sprite)
			// "sorte" du o_solid
			while (position_meeting(x + grab_width * image_xscale, y - 1, o_solid)) {
				y--;
			}
			
			// changer de sprite et d'etat
			sprite_index = s_player_ledge_grab;
			state = player.ledge_grab;
			
			// jouer un son
			audio_play_sound(a_step, 6, false);
		}
		
	break;
#endregion
#region		 s'aggriper
	case player.ledge_grab:
		if (down) {
			state = player.moving;
		}
		else if (up) {
			state = player.moving;
			yspeed = jump_height;
		}
	break;
#endregion
#region		 porte de sortie
	case player.door:
		
	break;
#endregion
#region		 joueur touché
	case player.hurt:
	
	break;
#endregion
#region		 joueur mort
	case player.death:
		
	break;
#endregion
}
#endregion
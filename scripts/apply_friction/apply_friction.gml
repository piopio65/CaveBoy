/// @description apply_friction(amount)
/// @param amount
var amount = argument0;

// on regarde si le perso se deplace
if (xspeed != 0) {
	// on regarde si la val absolue de la vit. du perso - accel. > 0
	// si oui on diminue progressivement sa vitesse , image_xscale est 1 si
	// le perso se deplace vers la droite -1 sinon
	// quand le test suivant renvoie <=0  on met xspeed à 0
	if (abs(xspeed) - amount > 0) {   
		xspeed -= amount * image_xscale;
	} else {
		xspeed = 0;
	}
}
if(!invulnerable){
	playerKnockback();
	with(other){
		dealCollideDamage();
		dealDamage();
	}
}

invulnerable = true;
image_blend = c_gray;
alarm[2] = 30;

if(current_hp <= 0){
	deathEffect();
	instance_destroy();
}
if(parry){
	other.isParried = true;
	exit;
}

if(!invulnerable){
	playerKnockback();
	with(other){
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
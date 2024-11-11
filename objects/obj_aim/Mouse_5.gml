/// @description PARRY
with(obj_player){
	if(move_lock || !can_parry)
		exit;
	
	can_parry = false;
	parry = true;
	invulnerable = true;
	image_blend = c_fuchsia;
	alarm[0]= 6 * DELTA;
	alarm[1] = 30 * DELTA; 
}
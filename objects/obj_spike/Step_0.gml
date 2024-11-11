/// @description Insert description here
// You can write your code in this editor

//3 HIT


//APPEAR
if(!wait && image_alpha < 1){
	mask_index = -1;	//no hitbox when appearing
	wait = true;
	image_alpha = clamp(image_alpha + 0.2, 0, 1);	//APPEAR OVER 0.5 SEC
	alarm[0] = 6 * DELTA;
}

if(image_alpha >= 1){
	mask_index = sprite;
	
	//3 HIT
	if(obj_aim.attack == 3){
		image_blend = c_orange;
		speed = 80;
	}else{
		image_blend = c_white;
		speed = 40;
	}
	
	//COLLIDE WITH TEMP
	if(place_meeting(x, y, obj_temp)){
		speed = 0;
		image_blend = c_red;
		if(instance_number(obj_spike) >= 10){
			image_blend = c_fuchsia;
		}
	}
}

time++;
if(time >= 45 * DELTA){
	mask_index = -1;
	wait = true;
	image_alpha = clamp(image_alpha - 0.2, 0, 1);
	alarm[2] = 12 * DELTA;
}
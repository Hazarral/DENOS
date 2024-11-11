/// @description Insert description here
// You can write your code in this editor

//3 HIT


//APPEAR
if(!wait && image_alpha < 1){
	mask_index = -1;	//no hitbox when appearing
	wait = true;
	image_alpha = clamp(image_alpha + 0.2, 0, 1);	//APPEAR OVER 0.5 SEC
	alarm[0] = 6;
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

// Assuming delta_time is in microseconds, so we convert it to seconds:
time += delta_time / 1000000; // Adds the time in seconds

// If 45 frames is your target, you could adjust it based on the frame rate, but for simplicity:
var _windup_time = 45 / room_speed; // Assuming room_speed is your frame rate

if(time >= _windup_time){
	mask_index = -1;
	wait = true;
	image_alpha = clamp(image_alpha - 0.2, 0, 1);
	alarm[2] = 12;
}
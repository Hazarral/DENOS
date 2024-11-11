/*
Player controls:

WASD - 8-directional movement
Left shift - Dash
Left Mouse Button - Use weapon
Right Mouse Button - Parry

Q - Active Skill 1
E - Active Skill 2
R - Summon 1
F - Summon 2
1 - Item 1
2 - Item 2

*/

//Movement input WASD
var _move_right = keyboard_check(ord("D"));
var _move_left = keyboard_check(ord("A"));
var _move_up = keyboard_check(ord("W"));
var _move_down = keyboard_check(ord("S"));
var _dash = keyboard_check_pressed(vk_shift);

//Change to input for directional calculation
var _x_input = (_move_right - _move_left);
var _y_input = (_move_down - _move_up);

//Normalize diagonal movements
if(_x_input * _y_input != 0){
	_x_input /= sqrt(2);
	_y_input /= sqrt(2);
}

//Add delta time to prevent syncing problem
var _adjusted_speed = player_speed //* (delta_time / 1000000);

//DASHING
if(!move_lock && _dash && can_dash && (_x_input != 0 || _y_input != 0)){
	
	can_dash = false;
	move_lock = true;
	invulnerable = true;
	mask_index = -1;
	image_blend = c_aqua;
	
	//Apply dash speed
	hspeed = _x_input * _adjusted_speed * 5;
	vspeed = _y_input * _adjusted_speed * 5;
	
	//Effect when dashing
	repeat(4){
		var _x_spawn = irandom_range(obj_player.x - 20, obj_player.x + 20);
		var _y_spawn = irandom_range(obj_player.y - 20, obj_player.y + 20);
		instance_create_layer(_x_spawn, _y_spawn, "EFFECTS", obj_base_dash);
	}
	
	alarm[0] = dash_duration;		//DURATION 0.2 sec
	alarm[1] = dash_cd;				//COOLDOWN 0.5 sec
}

//Update player's position for tracking
global.player_x = x;
global.player_y = y;

//If all conditions are met, the player successfully moves
if(!move_lock){
	x += _x_input * _adjusted_speed;
	y += _y_input * _adjusted_speed;
}

//Clamp to borders of map
x = clamp(x, sprite_width/2, room_width -  sprite_width/2);
y = clamp(y, sprite_height/2, room_height -  sprite_height/2);
/// @description Use weapon
// You can write your code in this editor
if(obj_player.can_shoot && !obj_player.move_lock){
	obj_player.can_shoot = false;
	global.aim_target_x = x;
	global.aim_target_y = y;
		
	instance_create_layer(obj_player.x, obj_player.y - 100, "GAME", obj_spike);
		
	alarm[0] = obj_spike.attack_cooldown;
}
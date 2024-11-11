/// @description Insert description here
// You can write your code in this editor

sprite_index = choose(spr_spike_1, spr_spike_2);
sprite = sprite_index;

wait = false;
time = 0;
image_alpha = 0;

direction = point_direction(x, y, global.aim_target_x, global.aim_target_y);
image_angle = direction;

damage = obj_player.player_damage;
attack_cooldown = obj_player.player_attack_cooldown * 0.6; //this gives 18
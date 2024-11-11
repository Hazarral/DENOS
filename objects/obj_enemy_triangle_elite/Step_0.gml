if(!instance_exists(obj_player) || wait)
	return;

speed = irandom_range(enemy_speed - 1, enemy_speed + 1);
var _distance = distance_to_point(global.player_x, global.player_y);
if(_distance <= detection_range){
	var _dir = point_direction(x, y, global.player_x, global.player_y) + 45;
	image_angle = lerp(image_angle, _dir, 0.1);
	move_towards_point(global.player_x, global.player_y, speed);
	if(!hasShot){
		hasShot = true;
		alarm[0] = 60 * 5 * DELTA;
	}
}else{
	speed = 0;
}

if(current_hp <= 0){
	deathEffect();
	dropXP();
	instance_destroy();
}
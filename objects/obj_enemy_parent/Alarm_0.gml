if(!instance_exists(obj_player))
	return;

speed = irandom_range(enemy_speed - 2, enemy_speed + 2);

var _distance = distance_to_point(global.player_x, global.player_y);
if(_distance <= detection_range){
	var _dir = point_direction(x, y, global.player_x, global.player_y);
	image_angle = lerp(image_angle, _dir, 0.1);
	move_towards_point(global.player_x, global.player_y, speed);
}else{
	speed = 0;
}

alarm[0] = 12 * DELTA;
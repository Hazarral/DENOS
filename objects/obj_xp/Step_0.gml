var _distance = distance_to_point(global.player_x, global.player_y);
if(_distance <= 400){
	move_towards_point(global.player_x, global.player_y, 30);
}else{
	speed = 0;
}
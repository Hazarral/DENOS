function playerKnockback(){
	move_lock = true;
	var _dir = point_direction(other.x, other.y, x, y);
	direction = _dir;
	speed = 50;
	alarm[2] = 30;	//invulnerable for 0.5 sec
	alarm[3] = 6;	//knocked back for 1/6 sec
}
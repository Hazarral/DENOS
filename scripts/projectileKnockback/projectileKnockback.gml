function projectileKnockback(){
	instance_destroy();
	var _dir = point_direction(x, y, other.x, other.y);
	with(other){
		direction = _dir;
		speed = 40;
	}
}
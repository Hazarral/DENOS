lifetime++;
if(lifetime * speed >= range)
	instance_destroy();
	
if(isParried){
	var _inst = instance_nearest(x, y, obj_enemy_parent);
	direction = point_direction(x, y, _inst.x, _inst.y);
	image_blend = c_blue;
}
if(!instance_exists(obj_xp))
	return;

var _level = obj_player.level;
var _total_xp = obj_player.total_xp;
var _current_xp = obj_player.current_xp;
/*
if(_total_xp < 40){
    current_threshold = threshold[0];
	with(obj_player){
		level += total_xp div obj_xp_manager.current_threshold;
		current_xp = total_xp mod obj_xp_manager.current_threshold;
	}
}else if(_total_xpP < 115){
    current_threshold = threshold[1];
	with(obj_player){
		total_xp = 40;
		level = 5;
		
		level += total_xp div obj_xp_manager.current_threshold;
		current_xp = total_xp mod obj_xp_manager.current_threshold;
	}
}*/

if(_level <= 5){
	current_threshold = threshold[0];
	var _mod = _current_xp mod current_threshold;
	var _div = _current_xp div current_threshold;
	if(_div > 0){
		with(obj_player){
			level += _div;
			current_xp = _mod;
		}
	}
}else if(_level <= 10){
	current_threshold = threshold[1];
	var _mod = _current_xp mod current_threshold;
	var _div = _current_xp div current_threshold;
	if(_div > 0){
		with(obj_player){
			level += _div;
			current_xp = _mod;
		}
	}
}
if(!instance_exists(obj_player))
	exit;

var _current_hp = obj_player.current_hp;
for(var i = 0; i <  _current_hp; i++){
	draw_sprite(spr_player_HP, 0, 20 + 80 * i, 20);
}
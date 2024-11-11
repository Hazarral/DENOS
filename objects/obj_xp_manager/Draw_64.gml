if(!instance_exists(obj_player))
	return;	

var _level = string(obj_player.level);
var _total_xp = string(obj_player.total_xp);
var _current_xp = string(obj_player.current_xp);
var _threshold = string(current_threshold);

draw_set_font(fnt);
draw_set_halign(fa_center);
draw_text_transformed(display_get_gui_width() - 80, 20, "LVL " + _level, 1.5, 1.5, 0);
draw_text_transformed(display_get_gui_width() - 80, 60, _current_xp + "/" + _threshold, 1.2, 1.2, 0);
draw_text_transformed(display_get_gui_width() - 80, 80, "(" +_total_xp + ")", 1.2, 1.2, 0);
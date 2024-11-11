/// @description Insert description here
// You can write your code in this editor

if(paused == true){
	if(!surface_exists(paused_surface)){
		if(paused_surface == -1){
			instance_deactivate_all(true);
		}
		paused_surface = surface_create(display_get_gui_width(), display_get_gui_height());
		surface_set_target(paused_surface);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
	}else{
		window_set_cursor(cr_default);
		draw_surface(paused_surface, 0, 0);
		draw_set_alpha(0.5);
		draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		draw_text_transformed_color(display_get_gui_width()/2, 20, global.TIME, 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 1);
		draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2, "PAUSED", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	}
}else{
	window_set_cursor(cr_none);	
}
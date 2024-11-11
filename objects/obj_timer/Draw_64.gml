var t = "";
if(minute < 10)
	t += "0";
t += string(minute) + ":";
if(second < 10)
	t += "0";
t += string(second);

global.TIME = t;

draw_set_font(fnt);
draw_set_halign(fa_center);
draw_text_transformed(display_get_gui_width()/2, 20, t, 1.5, 1.5, 0);
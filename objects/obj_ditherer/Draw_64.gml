application_surface_draw_enable(false);
shader_set(shade_dither);
var res = shader_get_uniform(shade_dither, "res");
shader_set_uniform_f(res, window_get_width(), window_get_height());
draw_surface(application_surface, 0, 0);
shader_reset();



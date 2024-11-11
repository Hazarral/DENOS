// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fullscreen(){
	global.is_borderless ^= 1; // Toggle the borderless state

    if (global.is_borderless) {
        window_set_fullscreen(true); // Make fullscreen
        window_set_size(display_get_width(), display_get_height()); // Resize to screen size
    } else {
        window_set_fullscreen(false); // Exit fullscreen
        window_set_size(1350, 900); // Set to a default window size
    }
}
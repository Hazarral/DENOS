/// @description Insert description here
// You can write your code in this editor

image_xscale = irandom_range(0.5, 2);
image_yscale = image_xscale;
speed = irandom_range(6, 10); //0 to 3

direction = point_direction(obj_player.x, obj_player.y, x, y);
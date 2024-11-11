//INITIALIZE
randomize();
INITIALIZE();
game_set_speed(60, gamespeed_fps);
instance_create_layer(room_width/2, room_height/2, "GAME", obj_player);
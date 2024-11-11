/// @description TILES

if(room != rm_game)
	exit;
	
var get_room_width = room_width/256;
var get_room_height = room_height/256;

var lay_id = layer_get_id("TILE_GROUND");
var map_id = layer_tilemap_get_id(lay_id);

for(var width = 0; width < get_room_width; width++;){
	for(var height = 0; height < get_room_height; height++){
		quality = choose(1, 1, 1, 1, 1, 1, 1, 2, 2, 3);
		tilemap_set(map_id, quality, width, height);
	}
}
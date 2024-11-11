/// @description TILES

if(room != rm_game)
	exit;
	
var _get_room_width = room_width/256;
var _get_room_height = room_height/256;

var _lay_id = layer_get_id("TILE_GROUND");
var _map_id = layer_tilemap_get_id(_lay_id);

for(var _width = 0; _width < _get_room_width; _width++){
	for(var _height = 0; _height < _get_room_height; _height++){
		var _quality = choose(1, 1, 1, 1, 1, 1, 1, 2, 2, 3);
		tilemap_set(_map_id, _quality, _width, _height);
	}
}
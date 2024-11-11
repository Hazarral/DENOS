if(room == rm_game){
	if(keyboard_check_pressed(vk_escape)){
		paused = !paused; //FLIP
		if(paused == false){
			instance_activate_all();
			surface_free(paused_surface);
			paused_surface = -1;
		}
	}
	/*if(paused == true){
		alarm[0]++;	//ADDING ONE EVERY FRAME TO COUNTER IT
		alarm[1]++;
	}*/
}
function deathEffect(){
	repeat(5){
		instance_create_layer(x, y, "EFFECTS", obj_base_dash);
		with (obj_base_dash){
			direction = irandom_range(0, 359);
			image_xscale = 0.5;
			image_yscale = image_xscale;
			speed = 20;
			image_blend = c_red;
		}
	}
}
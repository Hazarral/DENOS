function giveXP(){
	other.total_xp += xp_value;
	other.current_xp += xp_value;
	instance_destroy();
}
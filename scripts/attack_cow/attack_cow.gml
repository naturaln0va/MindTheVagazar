/// @desc attack_cow(obj)
/// @arg The cow object to attack

var cow = argument0;

if not instance_exists(cow) {
	show_debug_message("404 - Cow not found.");
	return;
}

with cow {
	
	// hurt cow
	hp--;
	
	// squish the cow
	// make the cow run
	
	if hp == 0 {
		// save spawn location for meat
		var spawn_x = x;
		var spawn_y = y;
		
		// destroy cow
		instance_destroy();
		
		// spawn meat
		instance_create_layer(spawn_x, spawn_y, "Instances", o_meat);
	}
}
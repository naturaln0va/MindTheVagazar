/// @desc Remove the crosshairs

with crosshairs {
	instance_destroy();
}

instance_create_layer(0, 0, "Instances", o_auto_title);
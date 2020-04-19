/// spawn_obj(type, radius, x_pos, y_pos)
/// @desc Spawn an object around a given point.
/// @arg type of object
/// @arg radius to spawn around
/// @arg x position
/// @arg y position
{
	if argument_count != 4 {
		return;
	}
	
	type = argument[0];
	radius = argument[1];
	rel_x = argument[2];
	rel_y = argument[3];
	
	spawn_pos_x = rel_x + (random_range(0, radius * 2) - radius);
	spawn_pos_y = rel_y + (random_range(0, radius * 2) - radius);
	
	instance_create_layer(spawn_pos_x, spawn_pos_y, "Instances", type);
}

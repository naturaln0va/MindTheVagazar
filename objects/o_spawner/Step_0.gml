/// @desc Spawn if needed

if cooldown > 0 {
	cooldown--;
	return;
}

obj_count = instance_number(obj_to_spawn);

if obj_count < max_objs {
	spawn_obj(obj_to_spawn, spawn_radius, x, y);
	
	cooldown = spawn_rate;
}
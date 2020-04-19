/// @desc Spawn cows if needed

if cooldown > 0 {
	cooldown--;
	return;
}

cow_count = instance_number(o_cow);

if cow_count < max_cows {
	spawn_obj(o_cow, cow_spawn_radius, x, y);
	
	cooldown = cow_spawn_rate;
}
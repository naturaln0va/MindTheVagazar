/// @desc Move towards beast

if is_held {
	return;
}

var beast = o_beast;
var distance = distance_to_object(beast);

if distance <= eat_distance {
	beast.hunger += saturation;
	beast.image_speed = 0.5;
	
	instance_destroy();
}
else if distance <= suck_distance {
	x += (beast.x - x) * suck_rate;
	y += (beast.y - y) * suck_rate;
}
else if toss_dir != -1 {
	toss_distance++;
	
	toss_x = lengthdir_x(1, toss_dir);
	toss_y = lengthdir_y(1, toss_dir);
	
	x += toss_x * (toss_speed + player_toss_speed);
	y += toss_y * (toss_speed + player_toss_speed);
	
	toss_scale += (0.065 * (player_toss_speed / 25)) * (toss_distance > mid_toss_length ? -1 : 1);
	
	image_xscale = 1 + toss_scale;
	image_yscale = 1 + toss_scale;
	
	if toss_distance == toss_length {
		toss_dir = -1;
		toss_scale = 0;
		toss_distance = 0;
		player_toss_speed = 0;
	}
}

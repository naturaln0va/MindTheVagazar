/// @desc Move towards beast

if is_held {
	return;
}

var beast = o_beast;
var distance = distance_to_object(beast);

if distance <= eat_distance {
	beast.hunger += saturation;
	
	instance_destroy();
}
else if distance <= suck_distance {
	x += (beast.x - x) * suck_rate;
	y += (beast.y - y) * suck_rate;
}

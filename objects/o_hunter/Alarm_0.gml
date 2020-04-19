/// @desc Choose direction or wait

if afraid or attacking {
	return; // running away
}

if move_speed != 0 {
	move_speed = 0;
	
	alarm_set(0, random_range(wait_decision_time_max, wait_decision_time_max));
}
else {
	// choose direction towards the beast
	// add some variation to the angle
	// so the hunter is not charging straight on
	
	beast_dir = point_direction(x, y, beast_obj.x, beast_obj.y);
	extra_angle = random_range(0, move_angle_factor * 2) - move_angle_factor;
	calc_angle = beast_dir + extra_angle;
	
	x_dir = lengthdir_x(1, calc_angle);
	y_dir = lengthdir_y(1, calc_angle);
	
	move_speed = base_speed;
	
	alarm_set(0, random_range(move_decision_time_min, move_decision_time_max));
}

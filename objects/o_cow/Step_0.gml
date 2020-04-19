/// @desc Move if needed

if hurt {
	move_speed = 0;
	alarm_set(0, 1);
	return;
}

if move_speed == 0 {
	return;
}

x += x_dir * move_speed;
y += y_dir * move_speed;
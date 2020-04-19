/// @desc Move if needed

image_speed = move_speed > 0 ? 1 : 0;

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

if x_dir != 0 {
	image_xscale = sign(x_dir);
}

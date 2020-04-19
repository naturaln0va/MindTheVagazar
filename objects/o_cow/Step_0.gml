/// @desc Move if needed

if move_speed == 0 {
	return;
}

x += x_dir * move_speed;
y += y_dir * move_speed;
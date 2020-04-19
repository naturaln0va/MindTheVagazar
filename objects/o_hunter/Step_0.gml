/// @desc Move if needed

if not attacking and distance_to_object(beast_obj) < attack_range {
	attacking = true;
	move_speed = 0;
}

if beast_obj.hunger <= 0 and not afraid {
	afraid = true;
	move_speed = 0;
	attacking = false;
}

if afraid and move_speed == 0 {
	var rand_direction = random_range(0, 359);
	
	x_dir = lengthdir_x(1, rand_direction);
	y_dir = lengthdir_y(1, rand_direction);
	
	move_speed = base_speed;
}
else {
	if move_speed == 0 {
		if attacking {
			if cooldown > 0 {
				cooldown--;
			}
			else {
				beast_obj.hunger -= irandom_range(2, 6);
				cooldown = attack_delay;
			}
		}
		return;
	}

	x += x_dir * move_speed;
	y += y_dir * move_speed;
}

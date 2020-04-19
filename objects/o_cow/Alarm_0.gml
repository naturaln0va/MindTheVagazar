/// @description Insert description here
// You can write your code in this editor

if move_speed != 0 {
	move_speed = 0;
	
	alarm_set(0, random_range(wait_decision_time_max, wait_decision_time_max));
}
else {
	if random(1) > 0.5 {
		x_dir = irandom_range(0, 2) - 1;
		y_dir = irandom_range(0, 2) - 1;
		
		move_speed = base_speed;
	}
	else {
		// turn random direction
	}
	
	alarm_set(0, random_range(move_decision_time_min, move_decision_time_max));
}

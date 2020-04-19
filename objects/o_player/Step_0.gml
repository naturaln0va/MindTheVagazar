
// get input

key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

key_action = keyboard_check_pressed(vk_space);

var should_move = false;

if action_cooldown > 0 {
	action_cooldown--;
}

switch state {
	
	case player_state.move: {
		// action button will check if enemy
		// or if an item is in range
		
		if key_action and action_cooldown == 0 {

			hit_obj = player_swing(crosshairs);
			
			if hit_obj != noone {
				state = player_state.action;
			}
		}
		
		should_move = true;
	} break;
	
	case player_state.action: {
		action_cooldown = total_action_cooldown;
		
		var obj_index = hit_obj.object_index;
		var should_swing = false;
		
		if obj_index == o_cow {
			attack_cow(hit_obj);
			hit_obj = noone;
			state = player_state.move;
			
			should_swing = true;
		}
		else if obj_index == o_meat {
			held_obj = hit_obj;
			held_obj.is_held = true;
			
			state = player_state.carry;
			instance_deactivate_object(crosshairs);
		}
		else if obj_index == o_hunter {
			hit_obj.afraid = true;
			hit_obj.move_speed = 0;
			
			state = player_state.move;
			
			should_swing = true;
		}
		
		if should_swing {
			crosshairs.image_speed = crosshairs_animation_speed;
		}
	} break;
	
	case player_state.carry: {		
		if key_action and action_cooldown == 0 and held_obj != noone {
			// throw the item
			
			held_obj.is_held = false;
			held_obj = noone;
			
			state = player_state.move;
			instance_activate_object(crosshairs);
		}
		
		should_move = true;
	} break;
	
	case player_state.hurt: {
		// player is hurt
		state = player_state.move;
	} break;
}

// process movement

if should_move {
	input_mag = (key_right - key_left != 0) or (key_down - key_up != 0);

	if input_mag {
		input_dir = point_direction(0, 0, key_right - key_left, key_down - key_up);
	}

	if input_mag {
		input_acceleration += acceleration_step;
	}
	else {
		input_acceleration -= acceleration_step;
	}

	input_acceleration = clamp(input_acceleration, 0, 1);

	adjusted_mag = input_acceleration * speed_walk;
	h_speed = lengthdir_x(adjusted_mag, input_dir);
	v_speed = lengthdir_y(adjusted_mag, input_dir);

	x += h_speed;
	y += v_speed;
	image_speed = image_speed_base + (input_acceleration * image_speed_mag);
}

crosshairs.x = x + lengthdir_x(crosshairs_distance, input_dir);
crosshairs.y = y + lengthdir_y(crosshairs_distance, input_dir);

// update the held object

var player_x = x;
var player_y = y;

with held_obj {
	
	x = player_x;
	y = player_y + 9;
}
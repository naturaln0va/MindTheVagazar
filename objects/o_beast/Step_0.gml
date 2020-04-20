/// @description Update hunger and agro

if hunger > 0 {
	//if cam_obj.zoomed_out {
	//	cam_obj.zoomed_out = false;
	//	cam_obj.is_zooming = true;
	//}
	
	hunger -= desaturation_rate;
}
else if cooldown > 0 {
	cooldown -= 1;
}
else {
	//if not cam_obj.zoomed_out {
	//	cam_obj.zoomed_out = true;
	//	cam_obj.is_zooming = true;
		
	//	audio_play_sound(a_roar, 5, false);
	//}
	
	if agro_target == noone {
		// find a new target
		var nearest_cow = instance_nearest(x, y, o_cow);
		
		agro_target = o_player;
		
		if instance_exists(nearest_cow) {
			var player_distance = distance_to_object(o_player);
			var cow_distance = distance_to_object(nearest_cow);
			
			if cow_distance < player_distance {
				agro_target = nearest_cow;
			}
		}
	}
	
	if instance_exists(agro_target) {
		var distance = distance_to_object(agro_target);
		
		if distance <= agro_kill_distance {
			instance_destroy(agro_target);
			
			agro_target = noone;
			cooldown = kill_cooldown;
		}
		else {
			var x_diff = agro_target.x - x;
			if abs(x_diff) > padded_speed {
				x += sign(x_diff) * agro_speed;
			}
			
			var y_diff = agro_target.y - y;
			if abs(y_diff) > padded_speed {
				y += sign(y_diff) * agro_speed;
			}
		}
	}
}
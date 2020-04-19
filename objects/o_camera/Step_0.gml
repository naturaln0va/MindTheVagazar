/// @description Update the camera

// ensure the target object exsists
var has_target = instance_exists(target_object);

if has_target {
	target_x = target_object.x;
	target_y = target_object.y;
}

// camera shake
if shake_time > 0 {
	var shake_x = random_range(-shake_mag, shake_mag);
	var shake_y = random_range(-shake_mag, shake_mag);
	
	target_x += shake_x;
	target_y += shake_y;
	
	shake_time--;
}
else {
	shake_mag = default_shake_mag;
}

if has_target and !snapped_to_player {
	x = target_x;
	y = target_y;
		
	snapped_to_player = true;
}
else {
	var rel_target_x = target_x - x;
	var diff_x = abs(rel_target_x);
	
	if diff_x > h_cam_padding {
		var change = (diff_x - h_cam_padding) / cam_lerp_rate;
		
		x += change * sign(rel_target_x);
	}
	
	var rel_target_y = target_y - y;
	var diff_y = abs(rel_target_y);
	
	if diff_y > v_cam_padding {
		var change = (diff_y - v_cam_padding) / cam_lerp_rate;
		
		y += change * sign(rel_target_y);
	}
}

// update the camera position
camera_set_view_pos(cam, x - view_width_half, y - view_height_half);

// cam zoom
if is_zooming {
	
	if zoomed_out {
		if cam_zoom_width < view_width * zoom_scale {
			cam_zoom_width += zoom_scale_speed;
		}
	
		if cam_zoom_height < view_height * zoom_scale {
			cam_zoom_height += zoom_scale_speed;
		}
	
		camera_set_view_size(cam, cam_zoom_width, cam_zoom_height);
	
		if cam_zoom_width > view_width * zoom_scale and cam_zoom_height > view_height * zoom_scale {
			is_zooming = false;
		}
	}
	else {
		if cam_zoom_width > view_width {
			min_width_diff = min(zoom_scale_speed, cam_zoom_width - view_width);
			cam_zoom_width -= min_width_diff;
		}
	
		if cam_zoom_height > view_height {
			min_height_diff = min(zoom_scale_speed, cam_zoom_height - view_height);
			cam_zoom_height -= min_height_diff;
		}
	
		camera_set_view_size(cam, cam_zoom_width, cam_zoom_height);
	
		if cam_zoom_width == view_width and cam_zoom_height == view_height {
			is_zooming = false;
		}
	}
}



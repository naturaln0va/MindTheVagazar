/// @desc Fire towards the beast

fire_dir = point_direction(x, y, target.x, target.y);

image_angle = fire_dir;

x += lengthdir_x(1, fire_dir) * throw_speed;
y += lengthdir_y(1, fire_dir) * throw_speed;

if distance_to_object(target) < 1 {
	target.hunger -= irandom_range(2, 6);
	
	sound = random(1) > 0.45 ? a_hit : a_hit_alt;
	audio_play_sound(sound, 3, false);
	
	instance_destroy();
}

/// @desc Fire towards the beast

fire_dir = point_direction(x, y, target.x, target.y);

image_angle = fire_dir;

x += lengthdir_x(1, fire_dir) * throw_speed;
y += lengthdir_y(1, fire_dir) * throw_speed;

if distance_to_object(target) < 1 {
	target.hunger -= irandom_range(2, 6);
	instance_destroy();
}

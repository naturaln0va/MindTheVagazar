// shake_screen(time, magnitude)
// Shakes the screen for a given amount of time.
// Optionally, the magnitude of the shake can be specified.
// This won't work if an instance of ocamera is not defined.

if not instance_exists(o_camera) or argument_count == 0 {
	return;
}

if argument_count == 2 {
	o_camera.shake_mag = argument[1];
}

o_camera.shake_time = argument[0];
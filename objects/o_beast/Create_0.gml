/// @desc Setup

image_speed = 0;

desaturation_rate = 1 / (room_speed * 2.125);

hunger = 100;
max_hunger = hunger;

cam_obj = o_camera;

agro_target = noone;
kill_cooldown = room_speed * 0.75;
cooldown = 0;

agro_speed = 2.425; // a little more than the player
agro_kill_distance = 0.75;
padded_speed = agro_speed * 1.25; // makes a smoother chase

// status bar

status_bar_width = 111;
status_bar_height = 9;

status_bar_x = (global.SCREEN_WIDTH / 2) - (status_bar_width / 2);
status_bar_y = 12;
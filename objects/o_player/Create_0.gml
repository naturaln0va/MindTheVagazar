
depth = -9999;

hit_obj = noone;
held_obj = noone;

crosshairs = instance_create_layer(x, y, "Instances", o_crosshairs);
crosshairs.depth = depth + 1;
crosshairs_animation_speed = 1.25;

action_cooldown = 0;
total_action_cooldown = room_speed * 0.5;

reach_len = 2;
crosshairs_distance = reach_len + 12;

input_acceleration = 0;
input_dir = 0;

h_speed = 0;
v_speed = 0;

image_speed_base = 0.85;
image_speed_mag = 0.55;

speed_walk = 2.4;
acceleration_step = 0.05;

state = player_state.move;

enum player_state {
	move,
	action,
	carry,
	hurt
}
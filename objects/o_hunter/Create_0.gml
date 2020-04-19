/// @desc Setup

beast_obj = o_beast;
afraid = false;

base_speed = 1.75;
move_speed = 0;

move_angle_factor = 36;

cooldown = 0;
attack_delay = room_speed * 2.5;

x_dir = 0;
y_dir = 0;

attack_range = 16;
attacking = false;

wait_decision_time_min = room_speed * 0.5;
wait_decision_time_max = room_speed * 1.75;

move_decision_time_min = room_speed * 0.25;
move_decision_time_max = room_speed * 0.75;

alarm_set(0, random_range(wait_decision_time_min, wait_decision_time_max));
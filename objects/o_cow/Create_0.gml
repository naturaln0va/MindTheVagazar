/// @desc Setup

base_speed = 1.2;
move_speed = 0;

x_dir = 0;
y_dir = 0;

hp = 2;

hurt = false;

wait_decision_time_min = room_speed * 1;
wait_decision_time_max = room_speed * 3;

move_decision_time_min = room_speed * 0.45;
move_decision_time_max = room_speed * 1;

alarm_set(0, random_range(wait_decision_time_min, wait_decision_time_max));
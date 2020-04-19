/// @description Setup the camera

cam = view_camera[0];
target_object = o_player;

view_width = camera_get_view_width(cam);
view_height = camera_get_view_height(cam);

view_width_half = view_width * 0.5;
view_height_half = view_height * 0.5;

target_x = xstart;
target_y = ystart;

cam_lerp_rate = 5;
h_cam_padding = 86;
v_cam_padding = 32;

shake_time = 0;
shake_mag = 4;
default_shake_mag = 4;

snapped_to_player = false;

zoomed_out = false;
is_zooming = false;

zoom_scale = 1.5;
zoom_scale_speed = 4;

cam_zoom_width = view_width;
cam_zoom_height = view_height;
/// @desc Render the status bar

draw_sprite(s_bar_background, 0, status_bar_x, status_bar_y);

var width = min(status_bar_width, (hunger / max_hunger) * status_bar_width);
draw_sprite_stretched(s_bar_fill, 0, status_bar_x, status_bar_y, width, status_bar_height);

draw_sprite(s_bar_frame, 0, status_bar_x, status_bar_y);

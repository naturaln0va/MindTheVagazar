/// @description General game setup

randomize();

audio_play_sound(a_music, 2, true);

global.SCREEN_WIDTH = 320;
global.SCREEN_HEIGHT = 180;

display_set_gui_size(global.SCREEN_WIDTH, global.SCREEN_HEIGHT);

room_goto(0);
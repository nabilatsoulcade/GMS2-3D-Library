/// @description Control Camera
/*
//Input
var key_left = -(keyboard_check(vk_left));
var key_right = (keyboard_check(vk_right));
axis_1 = key_left + key_right;

var key_up = -(keyboard_check(vk_up));
var key_down = (keyboard_check(vk_down));
axis_2 = key_up + key_down;

var key_a = -(keyboard_check(ord("A")));
var key_d = (keyboard_check(ord("D")));
axis_3 = key_a + key_d;

var key_w = -(keyboard_check(ord("W")));
var key_s = (keyboard_check(ord("S")));
axis_4 = key_w + key_s;

// Control Camera Variables

camera_x_target[0] += axis_2*7;
camera_y_target[0] += axis_3*7;
camera_z_target[0] += axis_4*7;
*/

if keyboard_check_pressed(vk_escape)
	{
	game_end();	
	}
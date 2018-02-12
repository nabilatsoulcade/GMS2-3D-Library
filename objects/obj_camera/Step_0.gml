camera_x[0] = obj_player.x;
camera_y[0] = obj_player.y;
camera_z[0] = obj_player.z + obj_player.height;
var camera_direction = obj_player.direction;
var camera_pitch = -obj_player.pitch;

camera_x_target[0] = camera_x[0] + lengthdir_x(1,camera_direction);
camera_y_target[0] = camera_y[0] + lengthdir_y(1,camera_direction);
final_camera_pitch = lengthdir_y(1,camera_pitch);
final_camera_pitch = clamp(final_camera_pitch,-180,180);
camera_z_target[0] = camera_z[0] + final_camera_pitch;
camera_angle[0] = camera_direction;
w = 1920*2;
h = 1080*2;

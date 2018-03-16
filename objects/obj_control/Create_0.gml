/// @description Insert description here
//Initialize 3D
render_3d_init_ext(true,true,cull_noculling,100);

//Setup Camera Variables
camera_variables_init();

//Initialize Camera
camera_init(0,true,60,view_get_wport(0)/view_get_hport(0),32,32000,camera_update_0);
camera_fov[0] = 60;
camera_z_near[0] = 32;
camera_z_far[0] = 32000;
//Set camera's sense of up
camera_xup[0] = 0;
camera_yup[0] = 0;
camera_zup[0] = -1;

//Starting Camera Setup
camera_x_target[0] = (room_width*0.5);
camera_y_target[0] = (room_height*0.5);
camera_z_target[0] = 0;


camera_x[0] = 0;
camera_y[0] = 0;
camera_z[0] = -640;

camera_angle[0] = 0;

render_distance = room_width * 0.3;

scr_model_creator();

show_debug_overlay(true);

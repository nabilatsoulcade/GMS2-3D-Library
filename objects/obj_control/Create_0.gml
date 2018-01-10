/// @description Insert description here
//Initialize 3D
render_3d_init_ext(true,true,cull_noculling);

//Setup Camera Variables
camera_variables_init();

//Initialize Camera
camera_init(0,true,60,view_get_wport(0)/view_get_hport(0),32,32000,camera_update_0);

//Set camera's sense of up
camera_xup[0] = 0;
camera_yup[0] = 0;
camera_zup[0] = 1;

//Starting Camera Setup
camera_z_distance[0] = 640;
camera_x_distance[0] = 720;
camera_y_distance[0] = 720;
camera_angle[0] = 0;

camera_x[0] = room_width/2;
camera_y[0] = room_height/2;
camera_z[0] = 0;
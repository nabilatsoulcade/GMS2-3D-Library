//Initialize camera variables in global scope
globalvar
camera_x_distance,
camera_y_distance,
camera_z_distance,
camera_x,
camera_y,
camera_z,
camera_xup,
camera_yup,
camera_zup,
camera_angle;

//make variables into arrays
camera_x_distance = array_create(8,0);
camera_y_distance = array_create(8,0);
camera_z_distance = array_create(8,0);
camera_x = array_create(8,0);
camera_y = array_create(8,0);
camera_z = array_create(8,0);
camera_xup = array_create(8,0);
camera_yup = array_create(8,0);
camera_zup = array_create(8,1);
camera_angle = array_create(8,1);

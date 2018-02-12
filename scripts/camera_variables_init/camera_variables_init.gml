//Initialize camera variables in global scope
globalvar
camera_x_target,
camera_y_target,
camera_z_target,
camera_x,
camera_y,
camera_z,
camera_xup,
camera_yup,
camera_zup,
camera_angle,
camera_fov,
camera_z_near,
camera_z_far,
camera_aspect_ratio;

//make variables into arrays
camera_x_target = array_create(8,0);
camera_y_target = array_create(8,0);
camera_z_target = array_create(8,0);
camera_x = array_create(8,0);
camera_y = array_create(8,0);
camera_z = array_create(8,0);
camera_xup = array_create(8,0);
camera_yup = array_create(8,0);
camera_zup = array_create(8,1);
camera_angle = array_create(8,1);
camera_fov = array_create(8,1);
camera_z_near = array_create(8,1);
camera_z_far = array_create(8,1);
camera_aspect_ratio = array_create(8,1);


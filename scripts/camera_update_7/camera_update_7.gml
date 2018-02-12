//Set up camera location
var index = 7;

//Build a matrix that looks from the camera location above, to the room center. The up vector points to +z
mLookat = matrix_build_lookat(camera_x[index],camera_y[index],camera_z[index], camera_x_target[index],camera_y_target[index],camera_z_target[index],camera_xup[index],camera_yup[index],camera_zup[index]);
mProj = matrix_build_projection_perspective_fov(-camera_fov[index],camera_aspect_ratio[index],camera_z_near[index],camera_z_far[index]);

//Assign the matrix to the camera. This updates were the camera is looking from, without having to unnecessarily update the projection.
camera_set_view_mat(view_camera[index], mLookat);
camera_set_proj_mat(view_camera[index], mProj );


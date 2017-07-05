//Set up camera location
var index = 0

var zz = -camera_z_distance[index];
var xx = lengthdir_x(camera_x_distance[index],camera_angle[index]) + camera_x[index];
var yy = lengthdir_y(camera_y_distance[index],camera_angle[index]) + camera_y[index];

//Build a matrix that looks from the camera location above, to the room center. The up vector points to +z
mLookat = matrix_build_lookat(xx,yy,zz, camera_x[index],camera_y[index],camera_z[index], camera_xup[index],camera_yup[index],camera_zup[index]);

//Assign the matrix to the camera. This updates were the camera is looking from, without having to unnecessarily update the projection.
camera_set_view_mat(view_camera[0], mLookat);
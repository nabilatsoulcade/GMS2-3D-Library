//Set up camera location
var zz = -640;
var xx = lengthdir_x(72,camera_angle[0]) + (room_width*0.5);
var yy = lengthdir_y(72,camera_angle[0]) + (room_height*0.5);

//Build a matrix that looks from the camera location above, to the room center. The up vector points to +z
mLookat = matrix_build_lookat(xx,yy,zz, (room_width*0.5),(room_height*0.5),0, 0,0,1);

//Assign the matrix to the camera. This updates were the camera is looking from, without having to unnecessarily update the projection.
camera_set_view_mat(view_camera[0], mLookat);
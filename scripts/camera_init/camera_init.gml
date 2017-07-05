/// @description Initialize a camera
/// @param camera_index
/// @param camera_enabled
/// @param fov
/// @param ratio
/// @param znear
/// @param zfar
/// @param camera_script


var camera_index = argument0; //The index of the camera (0-9)
var camera_enabled = argument1; //Whether or not the camera is being drawn
var fov = argument2; //fov of the camera
var ratio = argument3; //ratio of camera
var znear = argument4; //znear
var zfar = argument5; //zfar
var camera_script = argument6 //script for updating camera


//First, we need to enable views and make our view visible
view_enabled = true;//Enable the use of views
view_set_visible(camera_index, camera_enabled);//Make this view visible

//First, create the camera. We could use camera_create_view, but that is more useful in a 2D environment
camera = camera_create();

//Then, we need to build a projection matrix. I keep this in instance scope in case I need to reassign it later. (Though you can retrieve matrices from a camera with camera_get functions
//I use matrix_build_projection_perspective_fov, as it gives the most control over how your projections looks.
//Here's how I use the arguments: I give a 60 degree vertical field of view, with a ratio of view_wport/view_hport, with a 32 unit near clipping plane, and a 32000 far clipping plane. Some of these values may need tweaking to your liking.
projMat = matrix_build_projection_perspective_fov(fov, ratio, znear, zfar);

//Now we assign the projection matrix to the camera
camera_set_proj_mat(camera, projMat);

//Finally, we bind the camera to the view
view_set_camera(camera_index, camera);

//Assigns the update script named "camera_update_script" to the camera belonging to the view
camera_set_update_script(view_camera[camera_index], camera_script);

return camera;
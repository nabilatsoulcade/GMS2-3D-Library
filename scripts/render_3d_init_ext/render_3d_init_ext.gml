/// @description Initializes 3D functionality with greater control
/// @param zwrite
/// @param ztest
/// @param cullmode

var zwrite = argument0;
var ztest = argument1;
var cullmode = argument2;

//Enables writing to the z-buffer (boolean)
gpu_set_zwriteenable(zwrite);

//Enables the depth testing (boolean)
gpu_set_ztestenable(ztest);

//Culling Mode 
/*
The cull mode value used must be one of the following constants (the default value is cull_noculling):

cull_noculling
cull_clockwise
cull_counterclockwise
*/
gpu_set_cullmode(cullmode);

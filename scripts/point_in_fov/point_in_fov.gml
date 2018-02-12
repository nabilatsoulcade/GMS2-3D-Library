/// @param px
/// @param py
/// @param camera_x
/// @param camera_y
/// @param camera_angle
/// @param camera_fov
/// @param render_distance

var px = argument0;
var py = argument1;
var xx = argument2;
var yy = argument3;
var cameraangle = argument4;
var camerafov = argument5;
var render_distance =  argument6;

var x1 = xx + lengthdir_x(render_distance,cameraangle - (camerafov/2));
var y1 = yy + lengthdir_y(render_distance,cameraangle - (camerafov/2));
var x2 = xx + lengthdir_x(render_distance,cameraangle + (camerafov/2));
var y2 = yy + lengthdir_y(render_distance,cameraangle + (camerafov/2));

return point_in_triangle(px,py,xx,yy,x1,y1,x2,y2);
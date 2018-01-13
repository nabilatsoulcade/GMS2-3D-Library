/// @description Draws a 3D Vertex with more control
/// @param buffer_index
/// @param texture_index
/// @param x
/// @param y
/// @param z
/// @param x_angle
/// @param y_angle
/// @param z_angle
/// @param x_scale
/// @param y_scale
/// @param z_scale

var vertex_buffer = argument0;
var vertex_texture = argument1;
var xx = argument2;
var yy = argument3;
var zz = argument4;
var x_angle = argument5;
var y_angle = argument6;
var z_angle = argument7;
var x_scale = argument8;
var y_scale = argument9;
var z_scale = argument10;
var mat = matrix_build(xx,yy,zz, x_angle, y_angle, z_angle, x_scale, y_scale, z_scale);

//The world matrix is what is used to transform drawing within "world" or "object" space.
matrix_set(matrix_world, mat);

//Submitting this vertex to the drawing pipeline (The actual drawing of the vertex)
vertex_submit(vertex_buffer, pr_trianglelist, vertex_texture);

//Resetting transforms can be done like this:
matrix_set(matrix_world, matrix_build_identity());
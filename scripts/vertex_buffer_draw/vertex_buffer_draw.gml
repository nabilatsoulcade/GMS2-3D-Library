/// @description Draws a 3D Vertex
/// @param bufer_index
/// @param texture_index
/// @param x
/// @param y
/// @param z


var vertex_buffer = argument0;
var vertex_texture = argument1;
var xx = argument2;
var yy = argument3;
var zz = argument4;

var mat = matrix_build(xx,yy,zz, 0, 0, 0, 1, 1, 1);

//The world matrix is what is used to transform drawing within "world" or "object" space.
matrix_set(matrix_world, mat);

//Submitting this vertex to the drawing pipeline (The actual drawing of the vertex)
vertex_submit(vertex_buffer, pr_trianglelist, vertex_texture);

//Resetting transforms can be done like this:
matrix_set(matrix_world, matrix_build_identity());

//Setting Alpha Testing
gpu_set_alphatestenable(true);
gpu_set_alphatestref(alphatest);
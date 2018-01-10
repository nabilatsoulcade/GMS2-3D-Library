/// @description Add an individual vertex
/// @param x1
/// @param y1
/// @param z1
/// @param vertex_buffer
//Get Arguments
	var x1 = argument0;
	var y1 = argument1;
	var z1 = argument2;
	var vertex_buff = argument3;

var color = draw_get_color();

//Adds Vertex to Vertex Buffer
vertex_position_3d(vertex_buff, x1, y1, z1);
vertex_normal(vertex_buff, 0, 0, 1);
vertex_color(vertex_buff, color, 1);
vertex_texcoord(vertex_buff, 0, 0);
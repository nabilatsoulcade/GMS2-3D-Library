/// @description Creates a Quadrilateral in 3D space from any 4 verticies
/// @param x1
/// @param y1
/// @param z1
/// @param x2
/// @param y2
/// @param z2
/// @param x3
/// @param y3
/// @param z3
/// @param x4
/// @param y4
/// @param z4
/// @param vertex_buffer_pointer
/*
Get all four verticies to build the buffers for our wall
*/
//Vertex 1
	var x1 = argument0;
	var y1 = argument1;
	var z1 = argument2;
//Vertex 2
	var x2 = argument3;
	var y2 = argument4;
	var z2 = argument5;
//Vertex 3
	var x3 = argument6;
	var y3 = argument7;
	var z3 = argument8;
//Vertex 4
	var x4 = argument9;
	var y4 = argument10;
	var z4 = argument11;

//Pointer to Vertex Buffer
	var temp_buff = argument12
	
var color = draw_get_color();

//Add the six vertices needed to draw a simple quadrilateral plane. 
//The normals are all pointing to (0,0,-1) (upward, in our case)
//The first triangle
var color = draw_get_color();

vertex_position_3d(temp_buff, x3, y3, z3);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 0, 0);

vertex_position_3d(temp_buff, x4, y4, z4);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 1, 0);

vertex_position_3d(temp_buff, x1, y1, z1);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 0, 1);

//vertex_buffer_add_triangle(x3,y3,z3,x4,y4,z4,x1,y1,z1,argument12);
//The second triangle. The winding order has been maintained so drawing is consistent if culling is enabled.

vertex_position_3d(temp_buff, x1, y1, z1);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 0, 1);

vertex_position_3d(temp_buff, x4, y4, z4);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 1, 0);

vertex_position_3d(temp_buff, x2, y2, z2);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 1, 1);

return temp_buff;

/// @description Creates a Triangle from 3 points
/// @param x1
/// @param y1
/// @param z1
/// @param x2
/// @param y2
/// @param z2
/// @param x3
/// @param y3
/// @param z3
/// @param vertex_buffer

//Get the points that will be added to form a triangle

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
	
//
vertex_buffer_add_vertex(x1,y1,z1,argument9);
vertex_buffer_add_vertex(x2,y2,z2,argument9);
vertex_buffer_add_vertex(x3,y3,z3,argument9 );
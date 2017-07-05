//Define a vector format
vertex_format_begin();

vertex_format_add_position_3d(); //Add 3D position info
vertex_format_add_normal(); //Add 3D surface normal info
vertex_format_add_color(); //Add color info
vertex_format_add_textcoord(); //Texture coordinate info

//End building the format, and assign the format to the variable "temp_format"
var temp_format = vertex_format_end();

return temp_format;
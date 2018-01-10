/// @description Set Index
texture_top = sprite_get_texture(spr_minecraft_grass_block_top,0);
texture_side = sprite_get_texture(spr_minecraft_grass_block_side,0);
/*
var temp_quad_buff1 = vertex_buffer_begin_assembly();
vertex_buffer_add_quadrilateral_pos(0,0,0,512,0,0,0,0,-512,512,0,-512,temp_quad_buff1); //Front
var finished_quad_buff1 = vertex_buffer_finish_assembly(temp_quad_buff1);
buffer1 = finished_quad_buff1; //vertex_buffer_create_quadrilateral_fixed(0,0,0,0,512,-512);

var temp_quad_buff2 = vertex_buffer_begin_assembly();
vertex_buffer_add_quadrilateral_pos(0,0,0,0,512,0,0,0,-512,0,512,-512,temp_quad_buff2); //Left
var finished_quad_buff2 = vertex_buffer_finish_assembly(temp_quad_buff2);
buffer2 = finished_quad_buff2; //vertex_buffer_create_quadrilateral_fixed(0,0,0,0,512,-512);

var temp_quad_buff3 = vertex_buffer_begin_assembly();
vertex_buffer_add_quadrilateral_pos(0,512,0,512,512,0,0,512,-512,512,512,-512,temp_quad_buff3); //Back
var finished_quad_buff3 = vertex_buffer_finish_assembly(temp_quad_buff3);
buffer3 = finished_quad_buff3; //vertex_buffer_create_quadrilateral_fixed(0,0,0,0,512,-512);

var temp_quad_buff4 = vertex_buffer_begin_assembly();
vertex_buffer_add_quadrilateral_pos(512,0,0,512,512,0,512,0,-512,512,512,-512,temp_quad_buff4); //Right
var finished_quad_buff4 = vertex_buffer_finish_assembly(temp_quad_buff4);
buffer4 = finished_quad_buff4; //vertex_buffer_create_quadrilateral_fixed(0,0,0,0,512,-512);
*/

var temp_quad_buff = vertex_buffer_begin_assembly();
vertex_buffer_add_quadrilateral_pos(0,0,0,512,0,0,0,0,-512,512,0,-512,temp_quad_buff); //Front
vertex_buffer_add_quadrilateral_pos(0,0,0,0,512,0,0,0,-512,0,512,-512,temp_quad_buff); //Left
vertex_buffer_add_quadrilateral_pos(0,512,0,512,512,0,0,512,-512,512,512,-512,temp_quad_buff); //Back
vertex_buffer_add_quadrilateral_pos(512,0,0,512,512,0,512,0,-512,512,512,-512,temp_quad_buff); //Right
var finished_quad_buff = vertex_buffer_finish_assembly(temp_quad_buff);
buffer = finished_quad_buff; //vertex_buffer_create_quadrilateral_fixed(0,0,0,0,512,-512);

var temp_quad_top = vertex_buffer_begin_assembly();
vertex_buffer_add_quadrilateral_pos(0,0,-512,512,0,-512,0,512,-512,512,512,-512,temp_quad_top); //Top
var finished_quad_top = vertex_buffer_finish_assembly(temp_quad_top);
buffer_top = finished_quad_top;
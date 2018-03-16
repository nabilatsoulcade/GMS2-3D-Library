/// @description Insert description here
// You can write your code in this editor

draw_set_lighting(true);
draw_light_define_direction(1, 0, 0, -64, c_white);
draw_light_enable(1, true);

vertex_buffer_draw_ext(vbuff_grass_blade_cluster_large,text_tall_grass_1,0,0,0,0,0,0,1,1,1);

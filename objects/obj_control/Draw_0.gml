/// @description Insert description here
// You can write your code in this editor

draw_set_lighting(true);
draw_light_define_direction(1, 0, 0, -64, c_white);
draw_light_enable(1, true);
/*
//var rotations = 7
for(var xx = 0; xx < room_width; xx += 720)
	{
	for(var yy = 0; yy < room_height; yy += 720)
		{
			if point_in_fov(xx,yy,camera_x[0],camera_y[0],camera_angle[0],camera_fov[0] + 30,render_distance)
				{
				//for(var theta = 0; theta < rotations + 1; theta++)
				//vertex_buffer_draw_ext(vbuff_grass_large,text_tall_grass_1,xx,yy,0,0,0,theta * (360/rotations),1,1,1);
				vertex_buffer_draw_ext(vbuff_grass_blade_cluster_large,text_tall_grass_1,xx,yy,0,0,0,0,1,1,1);
				}
		}
	}
*/

game_time += 1;
shader_set_uniform_f(shader_get_uniform(shader_grass,"uni_time"),game_time);
shader_set_uniform_f(shader_get_uniform(shader_grass,"uni_day"),game_day);

shader_set(shader_grass);
vertex_buffer_draw_ext(vbuff_grass_blade_cluster_large,text_tall_grass_1,0,0,0,0,0,0,1,1,1);
shader_reset();
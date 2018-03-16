globalvar vbuff_grass_small,vbuff_grass_medium,vbuff_grass_blade_cluster,vbuff_grass_blade_cluster_large;

vbuff_grass_small = vertex_buffer_create_quadrilateral_pos(0,0,0,512,0,0,0,0,-512,512,0,-512);
vbuff_grass_medium = vertex_buffer_create_quadrilateral_pos(0,0,0,640,0,0,0,0,640,640,0,-640);
vbuff_grass_large = vertex_buffer_create_quadrilateral_pos(0,0,0,960,0,0,0,0,960,960,0,-960);

vbuff_grass_blade_cluster = vertex_buffer_begin_assembly()

var rotations = 5
for(var theta = 0; theta < rotations + 1; theta++)
	{
		var vertex_x = 0 + lengthdir_x(960,theta * (360/rotations));
		var vertex_y = 0 + lengthdir_y(960,theta * (360/rotations)); ;
		vertex_buffer_add_quadrilateral_pos(0,0,0,vertex_x,vertex_y,0,0,0,960,vertex_x,vertex_y,-960,vbuff_grass_blade_cluster);
	}

vbuff_grass_blade_cluster = vertex_buffer_finish_assembly(vbuff_grass_blade_cluster);

//Grass Floor
vbuff_grass_blade_cluster_large = vertex_buffer_begin_assembly()
var rotations = 15;
for(var xx = 0; xx < room_width; xx += 720)
	{
	for(var yy = 0; yy < room_height; yy += 720)
		{
		for(var theta = 0; theta < rotations + 1; theta++)
			{
			var vertex_x = xx + lengthdir_x(960,theta * (360/rotations));
			var vertex_y = yy + lengthdir_y(960,theta * (360/rotations)); ;
			vertex_buffer_add_quadrilateral_pos(xx,yy,0,vertex_x,vertex_y,0,xx,yy,960,vertex_x,vertex_y,-960,vbuff_grass_blade_cluster_large);
			}
		}
	}
vbuff_grass_blade_cluster_large = vertex_buffer_finish_assembly(vbuff_grass_blade_cluster_large);

globalvar text_tall_grass_1,text_tall_grass_2,text_tall_grass_3;

text_tall_grass_1 = sprite_get_texture(texture_tall_grass_1,0);
text_tall_grass_2 = sprite_get_texture(texture_tall_grass_2,0);
text_tall_grass_3 = sprite_get_texture(texture_tall_grass_3,0);
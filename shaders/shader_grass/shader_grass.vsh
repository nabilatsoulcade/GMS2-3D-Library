//
// Grass wind/daylight shader.
//
attribute vec3 in_Position;                  // (x,y,z)
attribute vec3 in_Normal;                    // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float uni_time;
uniform float uni_day;

void main()
    {
    vec4 object_space_pos = vec4( in_Position.x+in_Colour.r*10.0*cos((uni_time)/1.0 + in_Position.x),
                                  in_Position.y+in_Colour.r*10.0*sin((uni_time)/1.0 + in_Position.x), in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    float light = dot(in_Normal,vec3(cos(uni_day),0.0,sin(uni_day)));
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
	//v_vColour = vec4(vec3(0.4+0.6*light),1.0);
    //v_vTexcoord = in_TextureCoord;
    }
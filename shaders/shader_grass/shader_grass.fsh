//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 spr = texture2D( gm_BaseTexture, v_vTexcoord );
    if (spr.a < 0.5){discard;}
    gl_FragColor = v_vColour * spr; 
}
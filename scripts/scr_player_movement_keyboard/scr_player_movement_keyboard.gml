//Mouse Controls
direction -= sensitivity * (display_mouse_get_x() - display_get_width() * 0.5);
pitch += sensitivity * (display_mouse_get_y() - display_get_height() * 0.5);


//Limiting the pitch
pitch = clamp(pitch,-80,80);


//Lock the mouse in the center of the display
display_mouse_set(display_get_width()/2,display_get_height()/2);


//Keyboard Controls

var vkeys = (keyboard_check(ord("W")) - keyboard_check(ord("S")));
var hkeys = (keyboard_check(ord("D")) - keyboard_check(ord("A")));

v_velocity += (vkeys * acceleration * (1 + (5 * keyboard_check(vk_shift))))
h_velocity += (hkeys * acceleration * (1 + (5 * keyboard_check(vk_shift))))


//Terminal Velocity
v_velocity = clamp(v_velocity,-terminal_velocity - (keyboard_check(vk_shift) * (terminal_velocity * 3.5)),terminal_velocity + (keyboard_check(vk_shift) * (terminal_velocity * 3.5)))
h_velocity = clamp(h_velocity,-terminal_velocity - (keyboard_check(vk_shift) * (terminal_velocity * 3.5)),terminal_velocity + (keyboard_check(vk_shift) * (terminal_velocity * 3.5)))


//Decelerate if in state of motion and no keys are being pressed
if (vkeys == 0 && abs(v_velocity) >= acceleration)
   {
   v_velocity -= sign(v_velocity) * acceleration;
   }
   
if (hkeys == 0 && abs(h_velocity) >= acceleration)
   {
   h_velocity -= sign(h_velocity) * acceleration;
   }
   
//Make usable for rectangular coordinate system
var x_velocity = lengthdir_x(v_velocity,direction) + lengthdir_x(h_velocity,direction - 90);
var y_velocity = lengthdir_y(v_velocity,direction) + lengthdir_y(h_velocity,direction - 90);


//Make Velocity of Depth affected by gravity
if (!place_meeting_ext(x,y,z,obj_solid_parent))
   {
   d_velocity -= gravitation;
   }
   
   
//Press space to jump
if place_meeting_ext(x,y,z-1,obj_solid_parent)
&& keyboard_check_pressed(vk_space)
   {
   d_velocity += jump_height;
   }
//Vertical Collision
if (place_meeting_ext(x,y+y_velocity, z , obj_solid_parent))
{
    while(!place_meeting_ext(x,y+sign(y_velocity), z , obj_solid_parent))
    {
        y += sign(y_velocity);
    }
    y_velocity = 0;
}
y += y_velocity;

//Horizontal Collision
if (place_meeting_ext(x+x_velocity,y, z , obj_solid_parent))
{
    while(!place_meeting_ext(x+sign(x_velocity),y, z , obj_solid_parent))
    {
        x += sign(x_velocity);
    }
    x_velocity = 0;
}
x += x_velocity;

// Collision
if (place_meeting_ext(x,y, z + d_velocity, obj_solid_parent))
{
    while(!place_meeting_ext(x,y, z +sign(d_velocity), obj_solid_parent))
    {
        z += sign(d_velocity);
    }
    d_velocity = 0;
}
z += d_velocity;


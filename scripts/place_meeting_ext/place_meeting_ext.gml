///place_meeting_ext(x, y, z, obj)
xx  = argument0;
yy  = argument1;
zz  = argument2;
object = argument3;
 
with (object) {
    var hw = other.sprite_width * 0.5;
    var hl = other.sprite_height * 0.5;
    var h  = other.height;
    if (other.xx > x - hw + 1 &&
        other.xx < x + sprite_width  + hw - 1 &&
        other.yy > y - hl + 1 &&
        other.yy < y + sprite_height + hl - 1 &&
        other.zz > z - h  + 1 &&
        other.zz < z + height - 1) {
            return true;
            }
    }
return false;



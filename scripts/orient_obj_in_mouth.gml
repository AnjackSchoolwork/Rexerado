///orient_obj_in_mouth()

// This script is specific to Fancy
if(obj_in_mouth != noone) {
    obj_in_mouth.y = y
    if(sprite_index == dog_right or sprite_index == dog_left) {
            obj_in_mouth.x = x + lengthdir_x(sprite_width / 2, direction)
    }
    else {
            obj_in_mouth.x = x
    }
}

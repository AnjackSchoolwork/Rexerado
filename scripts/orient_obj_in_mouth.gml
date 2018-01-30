///orient_obj_in_mouth(sprite_left, sprite_right)

sprite_left = argument[0]
sprite_right = argument[1]

// This script is specific to Fancy
if(obj_in_mouth != noone) {
    obj_in_mouth.y = y
    if(sprite_index == sprite_right or sprite_index == sprite_left) {
            obj_in_mouth.x = x + lengthdir_x(sprite_width / 2, direction)
    }
    else {
            obj_in_mouth.x = x
    }
}

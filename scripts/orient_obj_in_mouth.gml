///orient_obj_in_mouth()


// This script is specific to Fancy
if(obj_in_mouth != noone) {
    obj_in_mouth.y = y
    if(sprite_index == sprite_list[? "run_right"] or 
        sprite_index == sprite_list[? "sit_right"] or 
        sprite_index == sprite_list[? "run_left"] or
        sprite_index == sprite_list[? "sit_left"]) {
            obj_in_mouth.x = x + lengthdir_x(sprite_width / 2, direction)
    }
    else {
            obj_in_mouth.x = x
    }
    
    if(sprite_index == sprite_list[? "front"]) {
        obj_in_mouth.depth = depth - 1
    }
}

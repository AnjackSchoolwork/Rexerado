///orient_obj_in_mouth()


// This script is specific to Fancy
if(obj_in_mouth != noone) {
    obj_in_mouth.y = mouth_y
    if(sprite_index == sprite_list[? "run_right"] or 
        sprite_index == sprite_list[? "sit_right"] or 
        sprite_index == sprite_list[? "run_left"] or
        sprite_index == sprite_list[? "sit_left"]) {
            obj_in_mouth.x = mouth_x //+ lengthdir_x(sprite_width / 2, direction)
    }
    else {
            obj_in_mouth.x = mouth_x
    }
    
    if(sprite_index == sprite_list[? "sit_front"] or sprite_index == sprite_list[? "run_front"]) {
        obj_in_mouth.depth = depth - 100
    }
    else {
        obj_in_mouth.depth = depth + 100
    }
}

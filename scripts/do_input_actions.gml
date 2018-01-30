///do_input_actions(input_map, is_gamepad)

input_map = argument[0]
is_gamepad = argument[1]

// Check gamepad inputs
if(is_gamepad) {
    v_value = gamepad_axis_value(0, gp_axislv)
    h_value = gamepad_axis_value(0, gp_axislh)
    vector_len = sqrt(sqr(v_value) + sqr(h_value))
    speed = vector_len * speed_value
    if(speed > 0) {
        direction = point_direction(x, y, x + h_value, y + v_value)
    }
    
    if(gamepad_button_check_pressed(0, buttons[? "BARK"]) and !charging_bark) {
        bark_charge_begin = current_time
        charging_bark = true
        audio_play_sound(snd_growl, 1, true)
    }
    else if (charging_bark and gamepad_button_check_released(0, buttons[? "BARK"])) {
        charging_bark = false
        if(audio_is_playing(snd_growl))  {
            audio_stop_sound(snd_growl)
            audio_play_sound(snd_bark, 1, false)
        }
        bark(bark_charge)
        bark_charge = 0
    }
    
    if(gamepad_button_check_pressed(0, buttons[? "GRAB"])) {
        if(obj_in_mouth != noone) {
            // Spit it out!
            obj_in_mouth.direction = direction
            obj_in_mouth.speed = 10
            obj_in_mouth.depth = depth + 1
            obj_in_mouth = noone
        }
        else {
            // Otherwise check for pick-up-able
            if(sprite_width > sprite_height) {
                grab_radius = sprite_width / 2
            }
            else
            {
                grab_radius = sprite_height / 2
            }
            
            local_pickups = get_objects_in_circle(x, y, sprite_width/2)
            
            for(index = 0; index < ds_list_size(local_pickups); index++) {
                if(object_is_ancestor(local_pickups[| index].object_index, pick_up_base)) {
                    obj_in_mouth = local_pickups[| index]
                    obj_in_mouth.depth = depth - 1
                    orient_obj_in_mouth(dog_left, dog_right)
                    break
                }
            }
        }
    }
}
else // Check the keyboard
{
    if(keyboard_check(keys[? "UP"])) {
        move_u = -1
    }
    else
    {
        move_u = 0
    }
    
    if(keyboard_check(keys[? "DOWN"])) {
        move_d = 1
    }
    else {
        move_d = 0
    }
    
    if(keyboard_check(keys[? "LEFT"])) {
        move_l = -1
    }
    else {
        move_l = 0
    }
    
    if(keyboard_check(keys[? "RIGHT"])) {
        move_r = 1
    }
    else {
        move_r = 0
    }
    
    if(keyboard_check(keys[? "BARK"]) and !charging_bark) {
        // Begin charging bark
        bark_charge_begin = current_time
        charging_bark = true
        audio_play_sound(snd_growl, 1, true)
    }
    else if(!keyboard_check(keys[? "BARK"]) and charging_bark) {
        charging_bark = false
        if(audio_is_playing(snd_growl)){
            audio_stop_sound(snd_growl)
            audio_play_sound(snd_bark, 1, false)
        }
        bark(bark_charge)
        bark_charge = 0
    }
    
    if(keyboard_check(keys[? "GRAB"]) and !grabbing) {
        if(obj_in_mouth != noone) {
            grabbing = true
            // Spit it out!
            obj_in_mouth.direction = last_direction
            obj_in_mouth.speed = 10
            obj_in_mouth.x = x + 10 + lengthdir_x((sprite_width/2) + 10, direction)
            obj_in_mouth.depth = depth + 1
            obj_in_mouth = noone
        }
        else {
            // Otherwise check for pick-up-able
            if(sprite_width > sprite_height) {
                grab_radius = sprite_width / 2
            }
            else
            {
                grab_radius = sprite_height / 2
            }
            
            local_pickups = get_objects_in_circle(x, y, sprite_width/2)
            
            for(index = 0; index < ds_list_size(local_pickups); index++) {
                if(object_is_ancestor(local_pickups[| index].object_index, pick_up_base)) {
                    obj_in_mouth = local_pickups[| index]
                    grabbing = true
                    obj_in_mouth.depth = depth - 1
                    orient_obj_in_mouth(dog_left, dog_right)
                    break
                }
            }
        }
    }
    else if (!keyboard_check(keys[? "GRAB"]) and grabbing) {
        grabbing = false
    }
    
    move_v = move_u + move_d
    move_h = move_l + move_r
    
    vector_len = sqrt(sqr(move_v) + sqr(move_h))
    speed = vector_len * speed_value
    if(speed > 0) {
        direction = point_direction(x, y, x + speed_value * move_h, y + speed_value * move_v)
    }
}

/// wander_state()

// Check perception radius - First thing it sees is fine



// Check wander target distance
if(false) {
if(point_distance(x, y, state_vars[? "wander_x"], state_vars[? "wander_y"]) > sprite_width / 2) {
    move_towards_point(state_vars[? "wander_x"], state_vars[? "wander_y"], speed_value * 0.75)
}
else if (speed != 0) {
    speed = 0
}
else {
    state_vars[? "tarry_time"] -= delta_time
    
    if(state_vars[? "tarry_time"] <= 0) {
        if(state_vars[? "wander_x"] != state_vars[? "home_x"] and state_vars[? "wander_x"] != state_vars[? "home_y"]) {
            state_vars[? "wander_x"] = state_vars[? "home_x"]
            state_vars[? "wander_x"] = state_vars[? "home_y"]
        }
        else {
            new_direction = irandom_range(0, 359)
            state_vars[? "wander_x"] = lengthdir_x(speed_value, new_direction)
            state_vars[? "wander_y"] = lengthdir_y(speed_value, new_direction)
        }
    }
}
}
// Check tarry time




/// wander_state(target)

target = argument[0]

// Check perception radius - First thing it sees is fine
perception_result = collision_circle(target.state_vars[? "perception_x"], target.state_vars[? "perception_y"], target.state_vars[? "perception_rad"], distraction_base, false, true)

// Calling object should always be moving toward their "move_target", if they are not already there
if(perception_result != noone) {
    target.move_target_x = perception_result.x
    target.move_target_y = perception_result.y
    exit
}

// Check wander target distance

// Check tarry time




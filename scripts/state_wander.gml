/// wander_state(target)

target = argument[0]

// Check perception radius - First thing it sees is fine
perception_result = collision_circle(target.state_vars[? "perception_x"], target.state_vars[? "perception_y"], target.state_vars[? "perception_rad"], distraction_base, false, true)
can_move = true
// Calling object should always be moving toward their "move_target", if they are not already there
if(perception_result != noone) {
        if(!place_meeting(x, y, perception_result.object_index)) {
            move_towards_point(perception_result.x, perception_result.y, speed_value)
            exit
        }
        else {
            speed = 0
            current_state = "playing"
        }
}



// Check wander target distance

// Check tarry time




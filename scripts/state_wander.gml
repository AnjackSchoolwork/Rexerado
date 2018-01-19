/// wander_state()

// Check perception radius - First thing it sees is fine
perception_result = can_see_thing(distraction_base, perception_x, perception_y, perception_rad)

if(perception_result != noone) {
        if(!place_meeting(x, y, perception_result.object_index)) {
            move_towards_point(perception_result.x, perception_result.y, speed_value)
            exit
        }
        else {
            speed = 0
            state_current = "playing"
            exit
        }
}



// Check wander target distance

// Check tarry time




/// state_play()

// can we still see the thing?
if(can_see_thing(target_object, x + percept_offset_x, y + percept_offset_y, perception_rad)) {
    // check to see it we're at the ball
    if(!place_meeting(x, y, target_object.object_index)) {
        move_towards_point(target_object.x, target_object.y, speed_value)
        exit
    }
    else if (object_is_ancestor(target_object, ball_base)) {
        temp_rand = irandom(10) % 2
        if(temp_rand == 0) {
            target_object.direction = irandom_range(-30, 30) + direction
            target_object.speed = irandom(10)
        }
        speed = 0
        exit
    }
}
else {
    speed = 0
    state_current = "idle"
}

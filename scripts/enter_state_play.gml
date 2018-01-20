/// enter_state_play(distraction_object)

distraction_object = argument[0]

if(!place_meeting(x, y, distraction_object.object_index)) {
    move_towards_point(distraction_object.x, distraction_object.y, speed_value)
    exit
}
else {
    speed = 0
    exit
}

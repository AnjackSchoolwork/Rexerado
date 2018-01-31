/// enter_state_play(target_object)

target_object = argument[0]

state_current = "playing"

audio_play_sound(meow_1, 1, false)

if(!place_meeting(x, y, target_object.object_index)) {
    move_towards_point(target_object.x, target_object.y, speed_value)
    exit
}
else {
    speed = 0
    exit
}

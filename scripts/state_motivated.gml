/// state_motivated()

if(motivation <= 0) {
    motivation = 0
    speed = 0
    state_current = "idle" // Recovery mode?
    exit
}


// Staying motivated isn't easy
if(can_see_thing(state_vars[? "motivation_source"], perception_x, perception_y, perception_rad)) {
    motivation -= 0.1
}
else {
    // Out of sight, out of mind
    motivation -= 1.0
}



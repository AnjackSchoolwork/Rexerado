/// state_motivated()

if(motivation <= 0) {
    motivation = 0
    speed = 0
    state_current = "idle" // Recovery mode?
    exit
}
else {
    // Staying motivated isn't easy
    if(can_see_thing(state_vars[? "motivation_source"], x + percept_offset_x, y + percept_offset_y, perception_rad)) {
        motivation -= 0.01
    }
    else {
        // Out of sight, out of mind
        motivation -= 0.1
    }
}


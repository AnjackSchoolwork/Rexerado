/// bark(power_level)

power_level = argument[0]

with(cat_base) {
    bark_distance = distance_to_point(other.x, other.y)
    if(bark_distance <= 1) {
        bark_distance = 1
    }
    if(bark_distance <= other.max_bark_radius) {
        // Motivation is inversely proportional to distance from motivator
        motivation += (1/bark_distance) * other.power_level * 10
        // Keep it reasonable
        clamp(motivation, 0, 10000)
        if(state_current != "motivated") {
            state_current = "motivated"
        }
        enter_state_motivated(other)
    }
    
}

with(bandit) {
    target_object = noone
    obj_in_mouth = noone
}

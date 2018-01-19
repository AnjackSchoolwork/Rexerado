/// bark(power_level)

power_level = argument[0]

with(cat_base) {
    bark_distance = distance_to_object(other)
    if(bark_distance <= other.max_bark_radius) {
        // Motivation is inversely proportional to distance from motivator
        motivation += (1/bark_distance) * other.power_level
        // Keep it reasonable
        clamp(motivation, 0, 1000)
        if(state_current != "motivated") {
            state_current = "motivated"
            enter_state_motivated(other)
        }
    }
    
}

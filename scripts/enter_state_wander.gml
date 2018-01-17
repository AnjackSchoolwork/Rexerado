/// enter_state_wander(target)

target = argument[0]

target.state_vars = undefined

target.state_vars = ds_map_create()

// Set home location
ds_map_add(target.state_vars, "home_x", target.x)
ds_map_add(target.state_vars, "home_y", target.y)
// Initialize perception
ds_map_add(target.state_vars, "perception_rad", 100)
ds_map_add(target.state_vars, "perception_x", target.x)
ds_map_add(target.state_vars, "perception_y", target.y)
// Initialize wander target to home location
ds_map_add(target.state_vars, "wander_x", target.x)
ds_map_add(target.state_vars, "wander_y", target.y)
// Initialize tarry
ds_map_add(target.state_vars, "tarry_rad", 30)
ds_map_add(target.state_vars, "tarry_time", 1)
ds_map_add(target.state_vars, "last_tarry_time", date_current_datetime())

target.state_current = state[? "wandering"]

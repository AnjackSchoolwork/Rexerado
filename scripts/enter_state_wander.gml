/// enter_state_wander()

// reinitialize state variables
state_vars = undefined

state_vars = ds_map_create()

// Set home location
ds_map_add(state_vars, "home_x", x)
ds_map_add(state_vars, "home_y", y)
// Initialize wander target to home location
ds_map_add(state_vars, "wander_x", x)
ds_map_add(state_vars, "wander_y", y)
// Initialize tarry
ds_map_add(state_vars, "tarry_rad", 30)
ds_map_add(state_vars, "tarry_time", 1)
ds_map_add(state_vars, "last_tarry_time", date_current_datetime())

state_current = "wandering"

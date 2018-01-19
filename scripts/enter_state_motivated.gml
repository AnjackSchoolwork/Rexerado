/// enter_state_motivated(motivation_source)

motivation_source = argument[0]

// reinitialize state variables
state_vars = undefined

state_vars = ds_map_create()

ds_map_add(state_vars, "motivation_source", motivation_source)
ds_map_add(state_vars, "new_direction", point_direction(motivation_source.x, motivation_source.y, x, y))



direction = state_vars[? "new_direction"]
speed = speed_value


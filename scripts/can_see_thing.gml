///can_see_thing(thing_to_see, per_x, per_y, per_range)

thing_to_see = argument[0]
per_x = argument[1]
per_y = argument[2]
per_range = argument[3]

result = false

//result = collision_circle(per_x, per_y, per_range, thing_to_see, false, true)
with(thing_to_see) {
    other.range = distance_to_point(other.per_x, other.per_y)
}

if (range < per_range) {
    result = true
}

return result

///get_objects_in_circle(center_x, center_y, radius)
/// Returns a list of all collide-able objects within a circle
/// with specified radius, centered at point x,y

center_x = argument[0]
center_y = argument[1]
radius = argument[2]

object_list = ds_list_create()

collision_result = collision_circle(x, y, radius, all, false, true)

while(collision_result != noone) {
    
    ds_list_add(object_list, collision_result)
    
    instance_deactivate_object(collision_result)
    
    collision_result = collision_circle(center_x, center_y, radius, all, false, true)
}

instance_activate_all()

return object_list

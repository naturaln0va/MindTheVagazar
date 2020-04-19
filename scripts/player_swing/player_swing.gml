/// player_swing(instance)

var obj = argument0;

if not instance_exists(obj) {
	return noone;
}

init_mask = mask_index;

mask_index = obj.object_index;

var hit_obj = instance_place(obj.x, obj.y, o_actionable);

mask_index = init_mask;

return hit_obj;
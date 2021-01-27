extends Line2D

var length = 15

func _process(delta):
	global_position = Vector2(0,0)
	global_rotation = 0
	add_point(get_parent().global_position)
	while get_point_count() > length:
		remove_point(0)

extends Sprite

func _ready():
	global_position = get_global_mouse_position()
	
func _process(delta):
	global_position = get_global_mouse_position()

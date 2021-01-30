extends Sprite

onready var MouseBurst = preload("res://prefabs/MouseBurst.tscn")

func _ready():
	global_position = get_global_mouse_position()
	
func _process(delta):
	global_position = get_global_mouse_position()

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var vfx = MouseBurst.instance()
		vfx.emitting = true
		add_child(vfx)
		vfx.set_as_toplevel(false)

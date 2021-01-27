extends CanvasLayer

export(String, FILE, "*.tscn") var current_scene = null

onready var Debug = $DebugMode

func _ready():
	var err = Global.connect("on_change_scene_requested", self,"_change_to")
	assert(err == OK, "Failed to connect to signal on_change_scene_requested")
	
	Debug.add_stat("Current Scene", self, "get_current_scene_name", true)
	
	_change_to(current_scene)
	
func _change_to(scene_path: String):
	if scene_path.get_extension() == "tscn":
		if get_child_count() > 1:
			remove_child(get_child(1))
		current_scene = scene_path
		var instanced_scene = load(current_scene).instance()
		add_child(instanced_scene)
		
func get_current_scene_name() -> String:
	return current_scene.get_file().trim_suffix(".tscn")

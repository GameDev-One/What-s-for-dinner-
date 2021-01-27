extends CanvasLayer

const ENABLED = 2
const DISABLED = -1

onready var DebugText: Label = $Label

var stats = []


func add_stat(stat_name, object, stat_ref, is_method):
	stats.append([stat_name, object, stat_ref, is_method])


func _process(delta):
	var label_text = ""
	
	var version_info = Engine.get_version_info()["string"]
	label_text += str("Godot Engine Version: ", version_info)
	label_text += "\n"
	
	var fps = Engine.get_frames_per_second()
	label_text += str("FPS: ", fps)
	label_text += "\n"
	
	var screen_size = OS.get_screen_size()
	label_text += str("Screen Size: ", screen_size)
	label_text += "\n"
	
	var mem = OS.get_static_memory_usage()
	label_text += str("Static Memory: ", String.humanize_size(mem))
	label_text += "\n"
	
	for s in stats:
		var value = null
		
		if s[1] and weakref(s[1]).get_ref():
			if s[3]:
				value = s[1].call(s[2])
			else:
				value = s[1].get(s[2])
		label_text += str(s[0], ": ", value)
		label_text += "\n"
	
	if DebugText:
		DebugText.text = label_text

func _on_TextureButton_toggled(button_pressed):
	if button_pressed:
		layer = DISABLED
	if not button_pressed:
		layer = ENABLED
		

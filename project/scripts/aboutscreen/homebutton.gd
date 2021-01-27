extends TextureButton


func _on_Home_pressed():
	Global.emit_signal("on_change_scene_requested", "res://prefabs/Title.tscn")

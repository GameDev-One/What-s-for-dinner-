extends TextureButton

func _on_DebugModeButton_toggled(button_pressed):
	Global.emit_signal("on_debug_mode_toggled", button_pressed)

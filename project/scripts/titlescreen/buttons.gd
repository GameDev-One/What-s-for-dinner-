extends GridContainer

onready var Quit: TextureButton = $Quit
onready var ConfirmationPopup: Popup = $ConfirmationDialog


func _on_Quit_pressed():
	for btn in get_children():
		btn.hide()
	ConfirmationPopup.popup()


func _on_ConfirmationDialog_popup_hide():
	for btn in get_children():
		btn.show()
		
	ConfirmationPopup.hide()


func _on_No_pressed():
	_on_ConfirmationDialog_popup_hide()


func _on_Yes_pressed():
	get_tree().quit()


func _on_About_pressed():
	Global.emit_signal("on_change_scene_requested", "res://prefabs/About.tscn")



func _on_Options_pressed():
	Global.emit_signal("on_change_scene_requested", "res://prefabs/Options.tscn")


func _on_Play_pressed():
	Global.emit_signal("on_change_scene_requested", "res://prefabs/Minigames/WhackAMole/WhackAMole.tscn")

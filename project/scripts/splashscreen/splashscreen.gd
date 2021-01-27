extends Control

onready var anim = $AnimationPlayer



func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "fade":
		var next_scene: String = "res://prefabs/Title.tscn"
		Global.emit_signal("on_change_scene_requested", next_scene)

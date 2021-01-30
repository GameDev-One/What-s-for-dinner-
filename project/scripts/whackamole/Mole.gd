extends Control

export(bool) var is_activated = false

onready var anim: AnimationPlayer = $AnimationPlayer
onready var button: TextureButton = $Button

var _anim_time: float = 0.0

func _ready():
	button.rect_pivot_offset.x = rect_size.x / 2
	button.rect_pivot_offset.y = rect_size.y / 2


func _process(delta):
	if is_activated:
		anim.play("jump")
		is_activated = false


func _on_Button_pressed():
	_anim_time = anim.current_animation_position
	anim.play("shake")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "shake":
		anim.play("jump")
		anim.seek(_anim_time)

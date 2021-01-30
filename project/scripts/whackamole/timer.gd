extends Panel

export(float, 10, 300) var time_left = 45.0
onready var timer: Timer = $Timer
onready var label: Label = $Label

func _ready():
	timer.wait_time = time_left
	label.text = str(stepify(time_left, 0.1))
	
func _process(delta):
	label.text = str(stepify(timer.time_left, 0.1))
	
	var shader: ShaderMaterial = material
	var progress_percent: float = timer.time_left * 100 / time_left
	shader.set_shader_param("value", progress_percent)

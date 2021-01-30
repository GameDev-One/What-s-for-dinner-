extends Control

onready var Moles: GridContainer = $Moles

func _ready():
	randomize()
	
	var selected_moles: Array = [-1,-1,-1]
	
	for index in range(3):
		var unique_num = randi() % 3
		if not selected_moles.has(unique_num):
			selected_moles[index] = unique_num
			
	var moles = $Moles.get_children()
	for mole_index in selected_moles:
		moles[mole_index].is_activated = true

extends ScrollContainer

export(int, 30, 200) var bar_width = 5

func _ready():
	get_v_scrollbar().rect_min_size.x = bar_width
	get_v_scrollbar().rect_size.x = bar_width
	get_h_scrollbar().rect_min_size.y = bar_width
	get_h_scrollbar().rect_size.y = bar_width



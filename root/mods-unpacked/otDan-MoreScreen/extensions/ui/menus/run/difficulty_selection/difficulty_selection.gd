extends "res://ui/menus/run/difficulty_selection/difficulty_selection.gd"


func _ready():
	var background: TextureRect = get_node("Background")
	background.stretch_mode = TextureRect.STRETCH_SCALE

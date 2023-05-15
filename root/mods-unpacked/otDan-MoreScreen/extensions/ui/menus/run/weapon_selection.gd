extends "res://ui/menus/run/weapon_selection.gd"


func _ready():
	var background: TextureRect = get_node("Background")
	background.stretch_mode = TextureRect.STRETCH_SCALE

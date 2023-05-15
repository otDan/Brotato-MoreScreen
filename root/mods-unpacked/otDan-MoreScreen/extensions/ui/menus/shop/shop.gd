extends "res://ui/menus/shop/shop.gd"


func _ready():
	var vbox: VBoxContainer = get_node("Content/MarginContainer/HBoxContainer/VBoxContainer")
	vbox.size_flags_horizontal = SIZE_EXPAND_FILL

	var vbox2: VBoxContainer = get_node("Content/MarginContainer/HBoxContainer/VBoxContainer2")
	vbox2.size_flags_horizontal = SIZE_FILL

extends "res://global/my_camera.gd"


func _process(_delta:float)->void:
	var width = OS.window_size.x / Utils.project_width
	var height = OS.window_size.y / Utils.project_height

	var calc_zoom
	if width > height:
		calc_zoom = height / width
	else:
		calc_zoom = width / height

	var _zoom = Vector2(calc_zoom, calc_zoom)
	zoom = _zoom

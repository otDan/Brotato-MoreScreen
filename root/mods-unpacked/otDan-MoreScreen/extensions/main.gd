extends "res://main.gd"


func _ready():
	_background.margin_bottom = 0
	_background.margin_left = 0
	_background.margin_right = 0
	_background.margin_top = 0
	_background.rect_rotation = 0
	_background.rect_position.x = 0
	_background.material = load("res://mods-unpacked/otDan-MoreScreen/materials/main_background.tres")
	_background.material.set_shader_param("first_color", _background.texture.gradient.colors[1])
	_background.material.set_shader_param("angle", 270)


func init_camera()->void:
	.init_camera()
	_camera.limit_right += 100
	_camera.limit_left -= 100
	_camera.limit_bottom += 100
	_camera.limit_top -= 100

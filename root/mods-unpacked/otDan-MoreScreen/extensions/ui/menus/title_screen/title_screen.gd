extends "res://ui/menus/title_screen/title_screen.gd"


func _ready():
	var background: TextureRect = get_node("Background")
	background.stretch_mode = TextureRect.STRETCH_SCALE
	_reset_margins(background)

	var background_mist_back: TextureRect = get_node("BackgroundMistBack")
	background_mist_back.stretch_mode = TextureRect.STRETCH_SCALE
	_reset_margins(background_mist_back)

	var background_mist_mid: TextureRect = get_node("BackgroundMistMid")
	background_mist_mid.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_COVERED
	_reset_margins(background_mist_mid)

	var background_mist_front: TextureRect = get_node("BackgroundMistFront")
	background_mist_front.stretch_mode = TextureRect.STRETCH_SCALE
	_reset_margins(background_mist_front)

	var background_brotato: TextureRect = get_node("BackgroundBrotato")
	background_brotato.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	_reset_margins(background_brotato)

	var background_post_processing: TextureRect = get_node("BackgroundPostProcessing")
	background_post_processing.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_COVERED


func _reset_margins(texture_rect: TextureRect):
	texture_rect.anchor_bottom = 1
	texture_rect.anchor_left = 0
	texture_rect.anchor_right = 1
	texture_rect.anchor_top = 0

	texture_rect.margin_bottom = 0
	texture_rect.margin_left = 0
	texture_rect.margin_right = 150
	texture_rect.margin_top = 0

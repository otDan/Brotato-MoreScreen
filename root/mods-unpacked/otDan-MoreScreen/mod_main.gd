extends Node


const MOD_NAME = "otDan-MoreScreen"


var mod_loader
var dir = ""
var translations_dir = ""
var extensions_dir = ""


func _init(_mod_loader = ModLoader):
	ModLoaderUtils.log_info("Init", MOD_NAME)
	mod_loader = _mod_loader

	dir = mod_loader.UNPACKED_DIR + MOD_NAME + "/"
	translations_dir = dir + "translations/"
	extensions_dir = dir + "extensions/"

	_install_translations()
	_install_script_extensions()
	_add_child_classes()


func _ready():
	get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_2D, SceneTree.STRETCH_ASPECT_EXPAND, Vector2(1920, 1080))
	ModLoaderUtils.log_success("Loaded", MOD_NAME)


func _physics_process(_delta):
	_try_install_shop_extension()


func _install_translations()->void:
	# mod_loader.add_translation_from_resource(translations_dir + "bettermodlist-translation.en.translation") # English
	# mod_loader.add_translation_from_resource(translations_dir + "bettermodlist-translation.it_IT.translation") # Italian
	# mod_loader.add_translation_from_resource(translations_dir + "bettermodlist-translation.pl_PL.translation") # Polish
	pass


func _install_script_extensions():
	mod_loader.install_script_extension(extensions_dir + "main.gd")
	mod_loader.install_script_extension(extensions_dir + "global/my_camera.gd")
	mod_loader.install_script_extension(extensions_dir + "ui/menus/title_screen/title_screen.gd")
	mod_loader.install_script_extension(extensions_dir + "ui/menus/run/character_selection.gd")
	mod_loader.install_script_extension(extensions_dir + "ui/menus/run/weapon_selection.gd")
	mod_loader.install_script_extension(extensions_dir + "ui/menus/run/difficulty_selection/difficulty_selection.gd")
	pass


func _try_install_shop_extension():
	var run_data = get_node_or_null("/root/RunData")
	if is_instance_valid(run_data):
		mod_loader.install_script_extension(extensions_dir + "ui/menus/shop/shop.gd")
		set_physics_process(false)


func _add_child_classes():
	# var Colors = load(dir + "global/colors.gd").new()
	# Colors.name = "Colors"
	# add_child(Colors)
	pass

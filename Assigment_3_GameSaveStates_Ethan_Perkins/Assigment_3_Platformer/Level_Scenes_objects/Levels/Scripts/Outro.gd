extends ColorRect
#Fade effect for outro and credits
func _ready():
	$"../Fade In".play("Fade")
	await get_tree().create_timer(6).timeout
	$"../Fade In".play("FadeOut")
	await get_tree().create_timer(3).timeout
	SaveFile.g_data["Level"] = 0
	SaveFile.save_data()
	get_tree().change_scene_to_file("res://MainMenu/Scene_menu/Main_Menu_Main/Main_menu.tscn")

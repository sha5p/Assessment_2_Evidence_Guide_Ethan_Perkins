extends Control
@onready var current_level=preload("res://Level_Scenes_objects/Levels/Level_scenes/Levels_LevelScene/level.tscn") as PackedScene
const LEVEL_2 = preload("res://Level_Scenes_objects/Levels/Level_scenes/Levels_LevelScene/Level2.tscn")
const LEVEL_3 = preload("res://Level_Scenes_objects/Levels/Level_scenes/Levels_LevelScene/level_3.tscn")
const LEVEL_4 = preload("res://Level_Scenes_objects/Levels/Level_scenes/Levels_LevelScene/Level4.tscn")
#Sets a preload on all the levels depending on countiue or not

func _ready():
	#Dislaying countiue based on save state
	if SaveFile.g_data["Level"] >0:
		$NinePatchRect/CenterContainer/HBoxContainer/VSeparator.visible=true
		$NinePatchRect/CenterContainer/HBoxContainer/Button.visible=true
	else: #dont display if levels dont save
		$NinePatchRect/CenterContainer/HBoxContainer/Button.visible=false
		$NinePatchRect/CenterContainer/HBoxContainer/VSeparator.visible=false
func _on_exit_pressed():
	$AudioStreamPlayer2D.play()
	get_tree().reload_current_scene()
	$".".visible=false
func _on_button_2_pressed():
	#If a new game changes to new save reset save state
	Fade.fade_out()
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(1).timeout
	SaveFile.g_data["Level"] = 0
	SaveFile.g_data["Deaths"] =0
	SaveFile.g_data["TotalDeath"] =0
	SaveFile.g_data["bomb_attack_speed"]=10
	SaveFile.g_data["bomb_speed"]=60
	SaveFile.g_data["shooter_bow_attack_speed"]=1
	SaveFile.save_data()
	get_tree().change_scene_to_packed(current_level)


func _on_button_pressed():
	#Load the save level
	Fade.fade_out()
	await get_tree().create_timer(1).timeout
	$AudioStreamPlayer2D.play()
	if SaveFile.g_data["Level"] == 1:
		get_tree().change_scene_to_packed(LEVEL_2)
	if SaveFile.g_data["Level"] == 2:
		get_tree().change_scene_to_packed(LEVEL_3)
	if SaveFile.g_data["Level"] == 3:
		get_tree().change_scene_to_packed(LEVEL_4)

extends Node2D
#Sets varibles for changing scene
var check =1
var LEVEL_3 = preload("res://Level_Scenes_objects/Levels/Level_scenes/Levels_LevelScene/level_3.tscn")
func _ready():
	$Door.play("Lock")
	
func _process(_delta):
	#Checks if the next level starts and plays animations
	if check==1 and Global.global_keys==2:
		door()
		check=2
	elif Global.global_keys==0:
		check=1
		$Door.play("Lock")
	if SaveFile.g_data["Level"] == 2:
		print("next level 2")
		get_tree().change_scene_to_packed(LEVEL_3)	
func door():
	$Door.play("Unlock")

func _on_area_2d_area_entered(_area):
	#Changes varibles for saves
	if Global.global_keys ==2:
		$AudioStreamPlayer2D.play()
		Global.level +=1
		$Door.play("Opening")
		Fade.fade_out()
		await get_tree().create_timer(1).timeout 
		Global.global_keys=0
		SaveFile.g_data["Deaths"] =0
		SaveFile.g_data["bomb_attack_speed"]=10
		SaveFile.g_data["bomb_speed"]=60
		SaveFile.g_data["shooter_bow_attack_speed"]=1
		SaveFile.g_data["Level"] += 1

		SaveFile.save_data()

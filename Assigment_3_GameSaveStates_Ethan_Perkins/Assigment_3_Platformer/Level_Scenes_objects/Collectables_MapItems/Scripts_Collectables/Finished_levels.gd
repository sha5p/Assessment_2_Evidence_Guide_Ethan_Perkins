extends Node2D
#Sets varibles for changing scene
var check =1
var CreditScene = preload("res://Level_Scenes_objects/Levels/Level_scenes/Completing_Game.tscn")
func _ready():
	$Door.play("Lock")
	
func _process(_delta):
	#Checks if the next level starts and plays animations
	if check==1 and Global.global_keys==2:
		door()
		check=2
	if SaveFile.g_data["Level"] ==4 :
		print("Change scene")
		get_tree().change_scene_to_packed(CreditScene)	
func door():
	$Door.play("Unlock")

func _on_area_2d_area_entered(_area):
	print("area entered")
	print(Global.global_keys)
	if Global.global_keys ==2:
		$AudioStreamPlayer2D.play()
		$Door.play("Opening")
		await get_tree().create_timer(1).timeout 
		#Changes varibles for saves
		SaveFile.g_data["Deaths"] =0
		SaveFile.g_data["bomb_attack_speed"]=10
		SaveFile.g_data["bomb_speed"]=60
		SaveFile.g_data["shooter_bow_attack_speed"]=1
		Global.global_keys=0
		Global.level +=1
		SaveFile.g_data["Level"] += 1
		SaveFile.save_data()
		
		

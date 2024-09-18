extends Node
#Sets global varibles some might not be used
#varible used to set some values for checking
var global_time_scale = 1.0
var global_keys =0
var player_x = 0
var level =0
var alive=true
func _ready():
	level=SaveFile.g_data["Level"]
	
func _check_difficulity_complexSave():
	#Checks how many times you die to change the difficulity complex save states
	print("Checking Difficulity","Deaths: ",SaveFile.g_data["Deaths"])
	if SaveFile.g_data["Deaths"] ==10:
		SaveFile.g_data["bomb_attack_speed"]=30
		SaveFile.g_data["bomb_speed"]=50
		SaveFile.g_data["shooter_bow_attack_speed"]=2
		SaveFile.save_data()
	if SaveFile.g_data["Deaths"] ==20:
		SaveFile.g_data["bomb_attack_speed"] =100
		SaveFile.g_data["bomb_speed"]=40
		SaveFile.g_data["shooter_bow_attack_speed"]=5
		SaveFile.save_data()
	if SaveFile.g_data["Deaths"] ==30:
		SaveFile.g_data["shooter_bow_attack_speed"]=10
		SaveFile.save_data()

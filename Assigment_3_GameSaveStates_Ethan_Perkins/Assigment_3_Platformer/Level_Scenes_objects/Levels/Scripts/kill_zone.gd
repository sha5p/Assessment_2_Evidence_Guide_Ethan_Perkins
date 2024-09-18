extends Area2D
@onready var timer = $Timer
#This kill zone mangers deaths on obstuclus and bomb goblin

func _on_body_entered(_body):
	#Also changes death save states one for end of game other for complex save states
	Global.global_keys=0
	SaveFile.g_data["Deaths"] += 1
	SaveFile.g_data["TotalDeath"] +=1
	Global._check_difficulity_complexSave()
	SaveFile.save_data()
	print("you died") 
	timer.start()

func _on_timer_timeout():
	get_tree().reload_current_scene()
func _process(_delta):
	if Global.alive==false:
		SaveFile.g_data["Deaths"] += 1
		SaveFile.g_data["TotalDeath"] +=1
		SaveFile.save_data()
		Global._check_difficulity_complexSave()
		get_tree().reload_current_scene()
		Global.alive=true

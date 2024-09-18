extends Area2D

const RIGHT = Vector2.RIGHT
@export var SPEED: int = 400


func _physics_process(delta):
	#Keep the arrow moving in a direction and times it by the global time for slow mo
	var movement = RIGHT.rotated(rotation) * SPEED * delta*Global.global_time_scale
	global_position += movement

func _on_VisibilityNotifier2D_screen_exited():
	#Stops lag
	queue_free()

func _on_area_entered(_area):
	#Called deffered a phsyic process
	call_deferred("reload")
	
func reload():
	#This is the area entered effect which will kill the player
	if is_inside_tree() and get_tree():
		Global.global_keys=0
		SaveFile.g_data["Deaths"] += 1
		SaveFile.g_data["TotalDeath"] +=1
		SaveFile.save_data()
		Global._check_difficulity_complexSave()
		get_tree().reload_current_scene()
	else:
		pass

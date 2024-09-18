extends Area2D 
#Plays sounds when collided, deletes after sound finsihes 
func _ready():
	
	$AnimationPlayer.play("spin")
func _on_body_entered(_body):
	$CollisionShape2D.call_deferred("set", "disabled", true)
	$AnimatedSprite2D.call_deferred("set", "visible", false)
	$AudioStreamPlayer2D.play()


func _on_area_entered(_area):
	print("Hit sword")


func _on_audio_stream_player_2d_finished():
	#changes global keys for door scences
	Global.global_keys +=1
	queue_free()

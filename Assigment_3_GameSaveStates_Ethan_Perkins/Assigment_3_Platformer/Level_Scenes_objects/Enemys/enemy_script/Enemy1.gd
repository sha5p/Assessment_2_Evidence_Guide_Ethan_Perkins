extends CharacterBody2D
var detect : bool = false 
var facing_right = false
var attack = false
var gravity =10000
var hit = false
func _ready():
	#print(SaveFile.g_data["coins"])
	$AnimationPlayer.play("Goblin_run")
func _physics_process(delta): 
	delta*= Global.global_time_scale
	if not is_on_floor():
		# Makes enemy fall
		velocity.y=gravity*delta
		velocity.x =0
		pass
	if !$RayCast2D.is_colliding() and attack == false:
		flip()
	if !$RayCast2D2.is_colliding() and attack == false:
		flip()
	if attack ==false:
		velocity.x=SaveFile.g_data["bomb_speed"]
	if attack and $RayCast2D.is_colliding():
		#Moves in the direction of player based on save state speed
			var player = $"..".get_node("Player")
			var num =(player.position.x - self.position.x)
			if num <0:
				$Goblin_animation.flip_h = true
			num = num/SaveFile.g_data["bomb_attack_speed"]
			velocity.x += (num)
	move_and_slide()
func flip():
	#Flips the goblin based on the direction
	facing_right = !facing_right
	$Goblin_animation.flip_h =  facing_right 
	if facing_right:
		SaveFile.g_data["bomb_speed"] =-abs(SaveFile.g_data["bomb_speed"])
	else: 
		SaveFile.g_data["bomb_speed"] = abs(SaveFile.g_data["bomb_speed"])




func _on_detection_area_body_entered(_body):
	#For detecing player hitbox
	$AudioStreamPlayer2D.play()
	attack = true
	$AnimationPlayer.play("Goblin_run_blowup")
	await get_tree().create_timer(0.8).timeout 
	queue_free()
	attack=false


func _on_sword_kill_area_entered(_area):
	#For sword it box 
	print("Sword hit")
	hit = true
	$AnimationPlayer.play("death")
	await get_tree().create_timer(0.4).timeout 
	queue_free()


	#elif attack and !$RayCast2D.is_colliding():
		#var player = $"..".get_node("Player")
		#var num =(player.position.x - self.position.x)
		#num = num/10
		#print("should work")
		#if num <0:
			#$Goblin_animation.flip_h = true
		#velocity.x +=(-num)
		#print("FLipping")
func _on_hitbox_area_entered(_area):
	await get_tree().create_timer(0.3).timeout 
	if hit:
		queue_free()
	else:
		Global.global_keys=0
		Global.alive = false

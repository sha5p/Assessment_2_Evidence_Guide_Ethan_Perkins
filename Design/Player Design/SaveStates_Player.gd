extends CharacterBody2D
@export var SPEED : int = 150
@export var GRAVITY : int = 500
@export var JUMP_FORCE : int = 250
@export var dashing : int = 600 # The additional force for the bunny hop
@export var ghost_scene : PackedScene
@onready var ghost_fade=$fade
var dash_time : bool = false 
var candash : bool = true 
var slow_motion_active : bool = true
var notattacking: bool = true
var original_time_scale = Engine.time_scale
func _ready():
	#Makes fade effect for player
	Fade.fade_in()
	await get_tree().create_timer(1).timeout
	$ProgressBar.value =150
	$CanDash.value =150
func dash():#This is the dash function which creates the ghost and sets varibles
	var ghost=ghost_scene.instantiate()
	ghost.set_property(position,$CurrentChracter.scale)
	if Input.is_action_just_released("Dash") and candash:
		Engine.time_scale=1
		$CanDash.value =0
		$ProgressBar.value =0
		dash_time =true
		candash = false
		await get_tree().create_timer(0.1).timeout
		dash_time =false
		$Ghost.stop()
		await get_tree().create_timer(2.5).timeout
		$ProgressBar.value = 150
		$CanDash.value =150
		candash=true
func timeslow():#This will slow down time but changing a global time scale
	if Input.is_action_pressed("Dash") and candash and slow_motion_active:
		Global.global_time_scale=0.1
		$ProgressBar.value -=1
		await get_tree().create_timer(2.5).timeout
		slow_motion_active = false
		Global.global_time_scale=1
		await get_tree().create_timer(2.5).timeout
		slow_motion_active = true
		
	else:
		Global.global_time_scale =1
func _physics_process(delta):
	if $ProgressBar.value != 150 and slow_motion_active == false:
		$ProgressBar.value +=1 #Time Slow bar
	if $CanDash.value != 150:
		$CanDash.value +=1 #Dash bar
	if velocity.length() == 0 and notattacking:
		$Player.play("idle") 
	if velocity.length() > 0 and notattacking:
		$Player.play("move")
	# Calculate the adjusted delta for the player
	var adjusted_delta = delta * (original_time_scale / Engine.time_scale)
	if velocity.x ==0: 
		$CPUParticles2D.emitting = false
	# Use the adjusted delta for player's physics calculations
	var direction = Input.get_axis("left", "right")
	if !dash_time:
		velocity.x = direction * SPEED * (Engine.time_scale / original_time_scale)
	if dash_time:
		$Ghost.start()
		if $CurrentChracter.flip_h == true:
			velocity.x = -dashing* (Engine.time_scale / original_time_scale)
		elif $CurrentChracter.flip_h == false:
			velocity.x = dashing* (Engine.time_scale / original_time_scale)
	if direction == 1:
		$CPUParticles2D.emitting = true
		$CurrentChracter.flip_h = false
		$Sword.position = Vector2(-7, 6)
		$Sword.rotation = -147.1
	elif direction == -1:
		$CPUParticles2D.emitting = true
		$CurrentChracter.flip_h = true
		$Sword.position = Vector2(18.5, 5)
		$Sword.rotation = -420
	if not is_on_floor():
		$CPUParticles2D.emitting = true
		velocity.y += GRAVITY * adjusted_delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
		$CPUParticles2D.emitting = true
		velocity.y -= JUMP_FORCE * (Engine.time_scale / original_time_scale)
	if Input.is_action_just_released("attack") and notattacking:
		#This is the attack
		notattacking = false
		$Sword.visible =true
		if $CurrentChracter.flip_h == false:
			$Player.play("Attack")
		if $CurrentChracter.flip_h:
			$Player.play("Attack_left")
		await get_tree().create_timer(0.3).timeout
		notattacking = true
	if notattacking:
		$Sword.visible =false
	dash()
	timeslow()
	# Apply the unadjusted velocity to move_and_slide
	move_and_slide()


func _on_area_2d_2_body_entered(_body):
	pass#this is here still was used for bug testing



func _on_ghost_timeout():
	#Makes a timer for adding ghosts
	var ghost=ghost_scene.instantiate()
	ghost.set_property(position,$CurrentChracter.scale)
	if $CurrentChracter.flip_h == true:
		ghost.scale = Vector2(-2, 2)
		ghost.z_index = 1
	elif $CurrentChracter.flip_h == false:
		ghost.z_index = 1
	get_tree().current_scene.add_child(ghost)

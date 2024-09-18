extends Node2D
@export var Arrow : PackedScene =null

var target: Node2D = null
@onready var raycast = $RayCast2D
@onready var reload = $RayCast2D/reload
@onready var bow = $Goblin_animation/bow
func _ready():
	await get_tree().create_timer(1).timeout
	target=detect()
	$RayCast2D/reload.wait_time=SaveFile.g_data["shooter_bow_attack_speed"]
func _physics_process(_delta):
	#Setting target to player a raycasting to player
	if target!= null:
		var angle_to_target: float = global_position.direction_to(target.global_position).angle()
		raycast.global_rotation = angle_to_target
		
		if raycast.is_colliding() and raycast.get_collider().is_in_group("Player"):
			bow.rotation = angle_to_target
			_playshoot()
func _playshoot():
	#plays sounds and animation
	bow.play("default")
	await get_tree().create_timer(0.4).timeout
	$Reload.play()
	bow.play("idle")
	if reload.is_stopped():
		shoot()
func shoot():
	raycast.enabled = false
	
	if Arrow:
		#Adding an arrow child
		$Shoot.play()
		var Arrow:Node2D=Arrow.instantiate()
		get_tree().current_scene.add_child(Arrow)
		Arrow.global_position = global_position
		Arrow.global_rotation= raycast.global_rotation
		
	reload.start()
func detect():
	#Detecting player
	var new_target: Node2D = null
	if get_tree().has_group("Player"):
		new_target = get_tree().get_nodes_in_group("Player")[0]
	return new_target

func _on_reload_timeout():
	raycast.enabled = true



func _on_area_2d_area_entered(_area):
	#killing the goblin
	target = null
	$Goblin_animation/bow.visible=false
	print("Sword hit")
	$Goblin_animation.play("death")
	await get_tree().create_timer(0.4).timeout 
	queue_free()

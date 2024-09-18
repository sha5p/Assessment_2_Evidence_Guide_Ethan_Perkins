extends Control
@onready var Settings = $Settings as setting
func _ready():	
	connections()
var paused: bool =false:
	set=set_paused
func _unhandled_input(event: InputEvent):
	if event.is_action_pressed("pause"):
		paused =!paused
		#Will change the pause on and off
func set_paused(value:bool):
	paused =value
	get_tree().paused=paused
	self.visible=paused
func _on_resume_pressed():
	paused =false

func _on_setting_pressed():
	$AudioStreamPlayer2D.play()
	$ColorRect/GridContainer.visible=false
	Settings.visible=true
func connections():
	#using a signal connection to turn on and off the settings visiblity
	#connection same as main menu
	Settings.exit_options_menu.connect(on_exit_options_menu) 
func on_exit_options_menu():
	$AudioStreamPlayer2D.play()
	$ColorRect/GridContainer.visible=true
func _on_menu_pressed():
	#changes to main menu scene
	$AudioStreamPlayer2D.play()
	get_tree().paused=false
	get_tree().change_scene_to_file("res://MainMenu/Scene_menu/Main_Menu_Main/Main_menu.tscn")

class_name MainMenu
extends Control

@onready var Settings = $Settings as setting
func _ready():
	_load_keybindings_from_setting()
	connections()
func _load_keybindings_from_setting(): #Shows and sets keyinputs
	#calls the key load which gets the list from the autloader
	var keybindings = SaveSettings.key_load()
	for action in keybindings.keys():
		# Check if the action exists in the InputMap before modifying it
		if not InputMap.has_action(action):
			InputMap.add_action(action)
		InputMap.action_erase_events(action)
		InputMap.action_add_event(action, keybindings[action])

func _on_button_button_down(): #Changes visiblity
	$AudioStreamPlayer2D.play()
	$VBoxContainer.visible=false
	$Control.visible=true
	$Label.visible=false
func _on_button_pressed(): #Changes visiblity
	$AudioStreamPlayer2D.play()
	$VBoxContainer.visible=false
	Settings.visible=true
	Settings.set_process(true)
	$Label.visible=false
func on_exit_options_menu(): #Changes visiblity
	$AudioStreamPlayer2D.play()
	$VBoxContainer.visible=true
	$Label.visible=true
	Settings.visible=false
	Settings.set_process(false)
func connections(): #connecyts a signal for visbiblity change
	Settings.exit_options_menu.connect(on_exit_options_menu) 
func _on_button_pressed_sound():
	get_tree().quit() #Quit function quits game

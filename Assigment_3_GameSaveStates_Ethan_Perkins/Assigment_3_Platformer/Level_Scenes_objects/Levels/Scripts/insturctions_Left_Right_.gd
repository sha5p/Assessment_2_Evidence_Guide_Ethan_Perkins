extends Label
#Will print key bind instruction based on saved hotkey
func _ready():
	var left_key = SaveSettings.config.get_value("keybinding", "left")
	var right_key = SaveSettings.config.get_value("keybinding", "right")
	if left_key != "A" or right_key!= "D":
		$".".text= "Move left: %s, Move right: %s" % [left_key, right_key]

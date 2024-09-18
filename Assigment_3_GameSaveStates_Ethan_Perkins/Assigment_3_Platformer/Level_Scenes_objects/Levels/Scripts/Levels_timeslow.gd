extends Label
#Will print key bind instruction based on saved hotkey
func _ready():
	var dash = SaveSettings.config.get_value("keybinding", "Dash")
	if dash != "shift":
		self.text = "Hold down %s to slow down projectiles"%[dash]

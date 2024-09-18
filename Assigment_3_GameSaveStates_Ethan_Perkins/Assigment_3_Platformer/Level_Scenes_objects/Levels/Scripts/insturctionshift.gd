extends Label
#Will print key bind instruction based on saved hotkey
func _ready():
	var dash = SaveSettings.config.get_value("keybinding", "Dash")
	if dash != "shift":
		self.text = "%s to dash"%[dash]

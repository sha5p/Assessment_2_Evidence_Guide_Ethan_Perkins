extends Label
#Will print key bind instruction based on saved hotkey
func _ready():
	var dash = SaveSettings.config.get_value("keybinding", "pause")
	if dash != "Escape":
		self.text = "Press %s to pause"%[dash]

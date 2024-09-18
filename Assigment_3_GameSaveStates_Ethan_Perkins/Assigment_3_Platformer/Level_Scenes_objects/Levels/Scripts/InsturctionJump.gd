extends Label
#Will print key bind instruction based on saved hotkey
func _ready():
	var jump = SaveSettings.config.get_value("keybinding", "jump")
	if jump != "w":
		self.text = "%s to jump"%[jump]

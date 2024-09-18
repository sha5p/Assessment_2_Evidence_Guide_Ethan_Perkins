extends Label
#Will print key bind instruction based on saved hotkey
func _ready():
	var deaths = SaveFile.g_data["TotalDeath"] 
	if deaths != 0:
		self.text = "Deaths: %s "%[deaths]

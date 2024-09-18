extends AudioStreamPlayer2D

#loops main music
func _on_finished():
	$".".play()

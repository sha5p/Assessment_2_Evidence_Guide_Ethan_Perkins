extends AudioStreamPlayer2D
#Makes an autloader that plays music in background 
const rainmusic = preload("res://Sounds/Sounds_Assest/SFX/lluvia-relajante-rain-2-210937.mp3")
@onready var gamemusic = $"."
var bob=0.0
func _ready():
	#$AudioStreamPlayer2D.play()
	play_sound()
func _playRain(music: AudioStream):
	if stream ==music:
		return
	stream = music
	bus = "SFX"
	play()
func play_sound():
	_playRain(rainmusic)

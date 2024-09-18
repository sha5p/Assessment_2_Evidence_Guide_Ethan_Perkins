extends StaticBody2D
#Breaking after collistion block
var time =1

func _ready():
	set_process(false)
func _process(_delta):
	time +=1
	$Sprite.position+= Vector2(0, sin(time) *2)
func _on_area_2d_area_entered(_area):
	set_process(true)
	$Timer.start(0.7)
	

func _on_timer_timeout():
	queue_free()

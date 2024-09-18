extends CollisionShape2D


func _on_area_entered(_area):
	$Area2D/CollisionShape2D.disabled=true
	#Disables sword collistion if not clicking

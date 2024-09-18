# **Dialogue Evidence** 

#### **Dialogue Photos**
|Dialogue logic|
|:---------|
|![image](https://github.com/user-attachments/assets/c078f1d2-a62d-4fc4-b9aa-2da6b53eff78)|
|Scene display|
|![image](https://github.com/user-attachments/assets/6cf2962b-bb4a-42a0-83bb-f36c3a3611b9)![image](https://github.com/user-attachments/assets/96be63ce-3fa0-481e-b581-8f653b73939d)![image](https://github.com/user-attachments/assets/7820852d-3b40-4aba-bb71-7f22da0f07c4)|
#### **Flow Chart**
![image](https://github.com/user-attachments/assets/9ff801a1-d4c7-4ea4-b1c4-73209258ee93)

#### **Code/Dialogue** 

```
extends Node2D
@onready var collision_shape_2d = $Area2D/CollisionShape2D
@onready var label = $Label
@onready var animation_player = $AnimationPlayer
#if colliding if the npc and the talk button is pressed start the dialogue 
func _ready():
	animation_player.play("Defualt")
	Dialogic.signal_event.connect(DialogicSignal)
	
func DialogicSignal(arugment: String): #Connects signals to dialogic 
	print("Received argument:", arugment)
	if arugment =="End":
		print("Global.talking=false")
		Global.talking=false
		collision_shape_2d.disabled=true
		await get_tree().create_timer(1).timeout
		collision_shape_2d.disabled=false
		queue_free()
	if arugment =="Good":
		SaveData.end=true
		SaveData.ending()
	if arugment =="Bad":
		SaveData.end=false
		SaveData.ending()
func _unhandled_input(event: InputEvent):
	if event.is_action_pressed("Talk"):
		print("debug")
		print(Global.cantalk)
	if event.is_action_pressed("Talk") and Global.cantalk:
		Dialogic.start("warning")
		Global.talking=true

func _on_area_2d_body_entered(body):
	var talk = SaveSettings.config.get_value("keybinding", "Talk")
	label.visible=true
	label.text= "Cick: %s to talk" % [talk]
	Global.cantalk=true
	

func _on_area_2d_body_exited(body):
	label.visible=false
	Global.cantalk=false
```

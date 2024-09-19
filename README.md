# Evidence Guide Ethan_Perkins Questions **evaluation **
. is to analysis and say how each project was used to build onto the next alternative solutions for those projects and lessons learnt from them all combined for future projects 
## Navigation 

This document will highlight how each topic has been improved apon over iteration considering users perspective, feedback, future designs and implementation of alternative solutions. 

|Core aspects of development|Branches|
|:-----|:-----|
|[Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#design---the-composition-of-the-assessments)|[Player Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Player%20Design),[Level Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Level%20Design),[ UI Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/UI_Design_Evidence.md)|
|[Saves](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#saves)|[Writing Files, Reading Files, ](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Saves)[Using Files](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Saves/SaveSettings.gd)|
|[Branching Choices](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#branching-choices)|[Code Decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Branching_Choices),[ UI decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Branching_Choices/Dialogue_Shop.gd), [Dialogue Decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Branching_Choices/Dialogue_branching_Evidence.md)|
|[Documentation](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#documentation)|[**Independent Research of functions**, Research of game design, Analysis of technology theories](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Documentation)|

|Done on each Core aspect|Topics|
|:----|:------|
|Display|knowledge, comprehension and application|
|Reflection|Contains a Synthesis to highlight how projects have built on them selves, **Independent Research**|

|[Conclusion](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#conclusion)|
|:----|
|Learning from this assesment, Ethical issues and Conclusion|

## **Design** _- The composition of the assessments_ 


### [Player Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Player%20Design)

The mini-game assessment was the first game that had a ‘player’ allowing the user to interact with the game. This was done by referring to the mouse via pre-built functions ```LookAt(mouseGlobalPosition);```. When [clicked](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/MiniGame_Player.cs), ```if (Input.IsActionJustPressed("click") && time_until_fire > _fireRate)``` another prebuilt function is used to let the user attack enemys and interact with the game. Inital Player designs used simple functions and alternative solutions would just create unessaryly blocky code however building upon these basic functions that reference the keyboard the SaveStates game contained a '[player](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/SaveStates_Player.gd)' with many more functions. Adding movment and a dash effect via the inbuilt velocity system in the [CharacterBody2D](https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#:~:text=moved%20by%20script.-,Description,physics%20bodies%20in%20their%20path.) node. The prebuilt velocity system was then altered depending on the input that the user gave 
```
	if !dash_time:
		velocity.x = direction * SPEED * (Engine.time_scale / original_time_scale)
	if dash_time:
		$Ghost.start()
		if $CurrentChracter.flip_h == true:
			velocity.x = -dashing* (Engine.time_scale / original_time_scale)
		elif $CurrentChracter.flip_h == false:
			velocity.x = dashing* (Engine.time_scale / original_time_scale))
```
then increasing the velocity when dashed. However the [weapon](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/SaveStates_Sword.gd) in this save state assesment lack varity for the user so alternativly if given more time I would have altered this aspect of the player either by particals or sound to immerse the user. So for the next assesment a [weapon](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/Dialogue_Weapon.gd) system was implmented to give 'varity' to the user in which was attached to the [player](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/Dialogue_Player.gd) containing addtional statuses such as health and shields. These function let the user choose via **dawdjaojdwjawodjoajj** to further immerse themselvves in the game. If this assesment were to be re-assigned then constant refrences to varibles 
```
	if Global.item[0]["Weapon"] =="LMG":
			timer.wait_time=Global.items[4]["FireRate"]
			LMG.visible=true
			ShotGun.visible=false
			Sniper.visible=false
			burst_shoty.visible=false
			ak_47.visible=false
			laser.visible=false
			rail_gun.visible=false
			bazoka.visible=false
```
would have changed and instead used a for loop this was done done due to time constraints but with the already present code that could be altered would make it achivable. Upon further look on all the types of 'player' designs a conclusion can be made that on future player designs as a whole that making the player not only look like they fit with the levels and interact with the [levels](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#conclusion) but base the players designed and the surronding enviorment to further increase immersion for the user. 

### [Level Desgin ](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Level%20Design)

The design of levels go hand to hand with player deisgn from obstuclues to assest presentation and a constant [theme](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Level_Design_Evidence.md). The mini-games level design centered around space with the background and obstuclues (enemys) staying in the constant [theme](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Level_Design_Evidence.md). 
![image](https://github.com/user-attachments/assets/198e1bec-3f0d-4e01-bcb5-ac86a955bd82)
The level for this game was infinite using a [spawning](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Enemy%20Design/MiniGame_Spawn.cs) system to constantly present the user with obstcules. This system was based on the [godot docs](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/05.the_main_game_scene.html#spawning-mobs) c# is used to get a random refrence on the 2D path and instantiating meteors or basic enemys. 
```
	private void _on_spawn_timer_timeout()
	{;
	// Instantiate the packed scene.
		Node2D sam = (Node2D)packedScene.Instantiate();
		Node2D instance = (Node2D)packedScene.Instantiate();
		if (instance == null)
		{
			return; //This is for errors
		}
	 // Get the PathFollow2D node.
		var pathFollow = GetNode<PathFollow2D>("Path2D/Around");
		if (pathFollow == null)
```
The meteors then go to the centre of the screen. Upon reflection on this code the design of the spawner should have been altered to increase in increments instead of just instansiateing the node to allow for increased difficulty. Addtionally the movment of the moteorwrite should have been changed from 
```Vector2 centerPosition = new Vector2(576, 324); ``` getting a refrence to makeing a refrence ```Vector2 centerPosition = GlobalRefrenceToPlayer.Posistion; ``` to make it more modutable. The levels sprites reamin constant with the [theme](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Level_Design_Evidence.md) throughout however the enemys design evolve. In the Save States assesment when detected it would move into the player direction
```
if attack and $RayCast2D.is_colliding():
		#Moves in the direction of player based on save state speed
			var player = $"..".get_node("Player")
			var num =(player.position.x - self.position.x)
			if num <0:
				$Goblin_animation.flip_h = true
			num = num/SaveFile.g_data["bomb_attack_speed"]
			velocity.x += (num)
```
Then depending on the save states data its speed would be [altered](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Enemy%20Design/SaveStates_Bommer.gd). 
Then before the next assesment reading on the godot forms indicated at a [Navigation Agent Node](https://docs.godotengine.org/en/stable/tutorials/navigation/navigation_using_navigationagents.html) creates prebuilt paths to the player instead of an inital direction. And so for the dialogic assesment the design the enemy was improved to incorporate path finding allowing the enemy to go around walls. 
![9c90ba6a-a3cc-41e8-9279-a729504ccad2](https://github.com/user-attachments/assets/26a48e6e-553b-44c3-b6a7-a8f61099559d)
To further expand on 2D enemy designs and improve levels combinding these save states with the navigation agent to alter the users experience and make it enjoyable while making the game feel more alive. 

### UI Design
UI design throughout each assesment had a constant layout throughout initally the pizza assesment going through for loops to [present](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Branching_Choices/Pizza_System_Choices.py) the data. Then modulated settings code was implmented and simply itterated over in each assesment to add addtional features from saveing the hot keys to altering the widows quality. However in the dialogue assesment the UI was altered to fit the theme of the [assesment](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Level_Design_Evidence.md).

## **Branching Choices**

### Dialogue
-dialogue

### Selections
-shop
-pizza


## **Saves** 

-file writing pizza
-file writing save states
-alter game
-file writing modulated (last)


## **Documentation** 
-improvments on analysis 
-gathing data for games
-data for code
-dislaying data and recording data

## **Conclusion** 


## Bib REFRENCE STYFAWFA

https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#:~:text=moved%20by%20script.-,Description,physics%20bodies%20in%20their%20path. 19/09/2024

https://docs.godotengine.org/en/stable/getting_started/first_2d_game/05.the_main_game_scene.html#spawning-mobs 

https://docs.godotengine.org/en/stable/tutorials/navigation/navigation_using_navigationagents.html

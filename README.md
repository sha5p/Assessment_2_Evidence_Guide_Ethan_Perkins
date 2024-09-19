# Evidence Guide Ethan_Perkins
. is to analysis and say how each project was used to build onto the next alternative solutions for those projects and lessons learnt from them all combined for future projects 
## Navigation 

This document will highlight how each topic has been improved apon over iteration considering users perspective, feedback, future designs and implementation of alternative solutions. 

|Core aspects of development|Branches|
|:-----|:-----|
|[Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/README.md#conclusion)|[Enemy Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Enemy%20Design), [Player Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Player%20Design),[ Level Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level_Design_Evidence.md),[ UI Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/UI_Design_Evidence.md)|
|[Saves](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/README.md#conclusion)|[Writing Files, Reading Files, ](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Saves)[Using Files](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Saves/SaveSettings.gd)|
|[Branching Choices](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/README.md#conclusion)|[Code Decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Branching_Choices),[ UI decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Branching_Choices/Dialogue_Shop.gd), [Dialogue Decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Branching_Choices/Dialogue_branching_Evidence.md)|
|[Documentation](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/README.md#conclusion)|[**Independent Research of functions**, Research of game design, Analysis of technology theories](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Documentation)|

|Done on each Core aspect|Topics|
|:----|:------|
|Display|knowledge, comprehension and application|
|Reflection|Contains a Synthesis to highlight how projects have built on them selves, **Independent Research**|

|[Conclusion](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/README.md#conclusion)|
|:----|
|Learning from this assesment, Ethical issues and Conclusion|

## **Design** _The composition of the assessments_ 


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
would have changed and instead used a for loop this was done done due to time constraints but with the already present code that could be altered would make it achivable. Upon further look on all the types of 'player' designs a conclusion can be made that on future player designs as a whole that making the player not only look like they fit with the levels and interact with the levels but base the players designed and the surronding enviorment to further increase immersion for the user. 

### Level Desgin 



### UI Design




## **Saves** 

## **Branching Choices**

## **Documentation** 

## **Conclusion** 


## Bib

https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#:~:text=moved%20by%20script.-,Description,physics%20bodies%20in%20their%20path. 19/09/2024

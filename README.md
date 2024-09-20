# Evidence Guide Ethan_Perkins Questions **TRANSFER to NEXT ** fix conclusion
. is to analysis and say how each project was used to build onto the next alternative solutions for those projects and lessons learnt from them all combined for future projects WHY TRANFERED THROUGHOUT ASSESMENT BECAUSE OF FEEDBACK
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

## **Design** _- The composition of the assessments_  WHY NOT WHAT  To further look into future modulated implmentations 


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

## **Saves** -ALTERNATIVE SOLUTION
File writing to the computer is important for all assesments that have been conducted in this unit as it allows for storing data and using the information in the data. File writing first used to save the'[order](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Saves/Assigment_1_Pizza_System_Saves_Ethan_Perkins%20-%20Copy.py)'that the user requested for their pizza. ![image](https://github.com/user-attachments/assets/38cbc8ce-af4e-46ba-8f90-503ac0bd9102)
The save systems than evolved in the games by using the [data](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Saves/save_file.gd) to change the save states. Global Varibles from the mini game assesment combinded with a pizza file writing system created enemys that would change based on data. Their attack speed running on presented data ```velocity.x=SaveFile.g_data["bomb_speed"]```. For efficency this [code](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Saves) was modualted allowing it to be used on the dialogic assesment with a few tweaks which was done to let the user record their progress. Without File Writing the users work in the assesment would vanish and they would lose progress but with it data could be presented their experienced altered and with modualted code makes it efficent for me the devloper. Allowing for the user to feel 'progress' even if they close the game or die. 

-file writing pizza
-file writing save states
-alter game
-file writing modulated (last)

## **Branching Choices**

Save States gives the user a feeling of progress, Design immerses the user into the protect and **[options](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Branching_Choices)** is done to allow the user to have a sense of choice. 

Giving the user multiple decisions was done to alter the users experience while the [design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#design---the-composition-of-the-assessments) is meant to immerse the player the choicies is designed to keep things fresh. Through the use multiple [inputs](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Branching_Choices/Pizza_System_Choices.py) The inputs were presented in by looping through diffrent inputs ``` while True:``` and then printing these inputs out to the user to present their options. However this caused a varity of long lines in codes 
![image](https://github.com/user-attachments/assets/f63c140c-576d-4941-861f-460553d8db99)
when branching decisions were then added to games in the last assesment it was done through both dialogue and a similar system to the pizza assesment via a shop system. However instead of going through multiple lines for loops were used instead to present the data
```
for i in range(5):
		if select==i and select!=0:
			currentItem=select
			weapons.play(Global.items[currentItem]["Name"])
			utlitys.visible=false
			weapons.visible=true
			item.text=Global.items[currentItem]["Name"]
			des.text=Global.items[currentItem]["Des"]+"\n Cost "+"$"+str(Global.items[currentItem]["Cost"])
			if Global.items[currentItem]["Name"]==Global.item[0]["Weapon"]:
				print("wprks")
				upgrade.visible=true
```
looping through the data as shown above allows the user to go through options while minimzing the code for the devloper. For future assesments when creating a branching outputs modulated code would be designed which would loop for a varible that contains interchagable data and then presents that to the user. Which would allow for more functionalty for possible choices in the assigment due dates. 

Addtional research outside of class led me to a this type of modualted system which I used for my dialogue assesment [dialogic](https://github.com/dialogic-godot/dialogic). Using such a system throughout the assesment to present dialogue 'choices' further boosted my intreset to make a simialr systems in the future. Taking the knowlage I already have I would build it much like my save states modulated code allowing making slots of information interchagable. This could be done for a dialogue system by making a text file and then putting that text into a system which checks for chracters when reading it before putting the text onto txt nodes.







## **Documentation** 
The skills of documentation when recorded and evaluating code for different assessments has changed throughout this unit. Initially code would be analysised by simply coming up with alternative solutions to express why a spercific type of code of technique was choosen over another. This trend proceeded throught the first two assesments then comparisions were made refrenceing other games to justify why the techniques and product was made in that way in the first place. Hwoever **Feedback** requested for more direct comparisions in code and justification rather than speculation  ....... for the last assesment requests for /......so in the feture such techniques will be incoprated. assesment future

Presenting this data evolved over the assesment tasks along with the analysis of the data itself. This was changed throughout as more feedback requested more **specific** parts of code rather than a broad range being analyised. The pizza assigment attached long blocks of code with zip files to express how the data was used and this trend follwed throught sesmester 1 but with an evoultion on how spercific the code became. Then in the branching assesment assigment from the multiple other assesments with each project increasing in size fixing errors that caused the game to break become harder and harder. To solve this the games files were uploaded and shown through github. This however showed a new issue through file naming which became more apparant in this assigment when gathering evidence to explore how techniques such as design, savesx, and branching decisions have evolved. On future assesments not only will I make this data easy to access but improve on naming so that ordering the data and managing it becomes easier. 



**get proof**



Making games highlights a variety of ethical issues.

-improvments on analysis 
-gathing data for games
-data for code
-dislaying data and recording data

## **Ethics**  alternative solutions

### Design- Sprites stealing/copywrite stealing/addiction/ 

### Documentation - AI Ethical Ai
When considering ethical issues 

The ethics of game devlopment have caused many discusses on ethical issues. An ongoing issue that has become more prominant over the recent years is data useage to form and devlop game making AI. This is because the AIs that create code and games such as **examples** and .... use data from other .... proof exmaplin to build these code makers. Addtionall in the industriy AI being trained on peoples code may take over the jobs of the people designing the code this is important to consider as .... I woudld also consider these work layoffs to be enthical in itself as 


Devlopers on the games such as myself adn coprate copanys incoprate many techniques such as these layoffs to ensure they make money. This is because like all industrys money is the goal and in dpoing so they have to make addictive games... make money/....

to sumrise game devlopment as a whole has many ethical issues from ... to .. maybe topics 


## Bib REFRENCE STYFAWFA more data

https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#:~:text=moved%20by%20script.-,Description,physics%20bodies%20in%20their%20path. 19/09/2024

https://docs.godotengine.org/en/stable/getting_started/first_2d_game/05.the_main_game_scene.html#spawning-mobs 

https://docs.godotengine.org/en/stable/tutorials/navigation/navigation_using_navigationagents.html


https://github.com/dialogic-godot/dialogic 20/9/2024

# Evidence Guide Ethan_Perkins Questions **TRANSFER to NEXT ** fix conclusion
. is to analysis and say how each project was used to build onto the next alternative solutions for those projects and lessons learnt from them all combined for future projects WHY TRANFERED THROUGHOUT ASSESMENT BECAUSE OF FEEDBACK
## Navigation 

This document will highlight how each topic has been improved apon over iteration considering users perspective, feedback, future designs and implementation of alternative solutions. 

|Core aspects of development|Branches|
|:-----|:-----|
|[Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#design---the-composition-of-the-assessments)|[Player Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Player%20Design),[Level Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Level%20Design),[ UI Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/UI_Design_Evidence.md)|
|[Saves](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#saves)|[Writing Files, Reading Files, ](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Saves)[Using Files](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Saves/SaveSettings.gd)|
|[Branching Choices](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#branching-choices)|[Code Decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Branching_Choices),[ UI decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Branching_Choices/Dialogue_Shop.gd), [Dialogue Decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Branching_Choices/Dialogue_branching_Evidence.md)|
|[Documentation](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#documentation)|[Development of analysis of technology theories](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Documentation)|
|[Conclusion](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#conclusion)|Learning from this assesment, Ethical issues and Conclusion|

## **Design** _- The composition of the assessments_  WHY NOT WHAT  To further look into future modulated implmentations 


### [Player Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Player%20Design)

The first game the mini-game designed a ‘player’ by referring to the mouse via pre-built functions ```LookAt(mouseGlobalPosition);```. When [clicked](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/MiniGame_Player.cs), ```if (Input.IsActionJustPressed("click") && time_until_fire > _fireRate)``` another prebuilt function is used to let the user attack enemys and interact with the game. Initial Player designs used simple functions as any additional code for a mini-game would create unnecessary code for a mini-game however this built the foundations for the next assessment. The Save States '[player](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/SaveStates_Player.gd)' having many more functions via the inbuilt velocity system in the [CharacterBody2D](https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#:~:text=moved%20by%20script.-,Description,physics%20bodies%20in%20their%20path.) node. Such examples include the dash increasing velocity speed 
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
a design in changing velocity was done so that godots phsyics engine could run all the logic for movment. However, the [weapon](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/SaveStates_Sword.gd) lacked variety for the user so alternatively I would have altered it by changing particles or sound to immerse the user. Because of this, the next assessment's [weapon](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/Dialogue_Weapon.gd) allowed for multiple different weapons to be chosen having a variety. If this assessment were to be re-assigned then constant references to variables  
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
would have instead used loops for fewer lines however due to time constraints this was not done. For future assignments, I would look to design a player that not only contains variety in movement and attack to immerse the player but also to design the players based on the [environment](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#conclusion) to further increase immersion for the user.

### [Level Desgin ](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Level%20Design)

The design of levels goes hand in hand with player design to immerse the player into the game. The core component of level design is the obstacles/enemies the user is presented along with the theme of the maps. The mini-game incorporated a simple space [theme](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Level_Design_Evidence.md) its main assests shown below

![image](https://github.com/user-attachments/assets/198e1bec-3f0d-4e01-bcb5-ac86a955bd82)

The mini-game was designed around a [spawning](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Enemy%20Design/MiniGame_Spawn.cs) system as it allows for constant meteors to attack the player. 
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
Upon reflection the spawnering system's design should have been altered to increase the amount of meteors spaned in increments rather than a constant rate. Additionally, the movement of the meteors should have been changed from 
```Vector2 centerPosition = new Vector2(576, 324); ``` getting a refrence to referring the player ```Vector2 centerPosition = GlobalRefrenceToPlayer.Position; ``` for changeability. The use of sprites [themes](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Level_Design_Evidence.md) reamin constant throughout each assesment. However, the design of obstacles/enemies evolved to further immerse the player. For example, enemies in the saved state's assessment used detection to attack the player
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
depending on the [save states](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#saves--alternative-solution) data its speed would then [alter](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Enemy%20Design/SaveStates_Bommer.gd).  However, such a repetive design though initially immersed lacked replayability so for the next assement a 
[Navigation Agent Node](https://docs.godotengine.org/en/stable/tutorials/navigation/navigation_using_navigationagents.html) a feature found on the godot read my form was used to find paths to the player instead of changing direction. And so for the dialogic assessment to improve replayability the enemies were changed to incorporate pathfinding.
![9c90ba6a-a3cc-41e8-9279-a729504ccad2](https://github.com/user-attachments/assets/26a48e6e-553b-44c3-b6a7-a8f61099559d)
To further expand on improved level design future assessments will combine the alteration enemies via save states with complex logic of balancing the difficulty of enemies with path finding.

UI design throughout each game dev assessment remained consistent with small changes via modulated code. This is important as [assesment](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Level_Design_Evidence.md). continue to increase in size and time constraints because of this each assessment will design more and more reusable core aspects.  

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
These designs for games however though they immerse the player lead to a variety of ethical issues that can influence the user's well-being. A Game developer must monetise their product to make a living and so to ensure steady income implementations so that in-app purchases and advertisements are put into the game. A core example of such a product is Flappy Bird which caused “heavy addiction”(Bird, 2014) and so was closed down due to “guilt”(Bird, 2014). 

I believe that games designed in this way can be considered unethical as not only can games designed like this lead to addiction but certain games to violence. A prime example of this is Fortnite in which neuroscientists found large dopamine releases when children played the game. (Anon, n.d.). And with the game's prominent violent behaviours (Game, 2024) I believe young children's prolonged exposure to such products should be minimised. 

However, I believe older people such games that cause addictions can be sold as like any addiction from drinking to smoking/vaping the choice should be made by each individual. However infringement of games from copying them such as the abundance of flapp bird games when the game closed down. (Dredge, 2014). I think that this becomes even worse when AI trains on un-bought data to design games from art and sound to coding and making whole products. 

Under the Intellectual property protection of video games, these forms of copyright from the artwork, scrips, sound effects and character design cannot be taken as they are “artistic work”(Pemberton, 2021). And so now a prominent problem but as AI becomes more and more prominent I believe that to stop such laws should be put i place. A simple solution to this issue is for whatever product the AI is trained on to be bought so that they use their products to make the AI. 

For my games in the future, I will try to implement solutions to minimize addictions, especially in regards to children. And continue to either create my assets or ensure that I follow the copyright rules under the products that I use. 



## Bib REFRENCE STYFAWFA more data

https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#:~:text=moved%20by%20script.-,Description,physics%20bodies%20in%20their%20path. 19/09/2024

https://docs.godotengine.org/en/stable/getting_started/first_2d_game/05.the_main_game_scene.html#spawning-mobs 

https://docs.godotengine.org/en/stable/tutorials/navigation/navigation_using_navigationagents.html


https://github.com/dialogic-godot/dialogic 20/9/2024


Bird, F. (2014). Salient PR. [online] Salient PR. Available at: https://salientpr.com/blog/therealstorybehindwhyflappybirdwasdeleted [Accessed 21 Sep. 2024].

Anon, (n.d.). Fortnite Addiction – Knowles International. [online] Available at: https://knowlesinternational.com/fortnite-addiction/#:~:text=In%20a%20study%2C%20a%20neuroscientist.

Dredge, S. (2014). Apple ban on Flappy Bird clones? Don’t tell Slappy Shark or Floppy Penguin. [online] the Guardian. Available at: https://www.theguardian.com/technology/2014/feb/17/flappy-bird-clones-apple-google [Accessed 21 Sep. 2024].

‌Pemberton, S. (2021). [online] LegalVision. Available at: https://legalvision.com.au/intellectual-property-protection-video-games/ [Accessed 21 Sep. 2024].

‌
‌

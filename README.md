# Evidence Guide Ethan Perkins 

## Navigation 

This document will highlight how each topic has been improved upon over iterations. Considering users' perspectives, feedback, future designs and implementation of alternative solutions.

|Core aspects of development|Branches|
|:-----|:-----|
|[Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#design)|[Player Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#player-design),[ Level Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#level-desgin-),[ UI Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/UI_Design_Evidence.md)|
|[Saves](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#saves)|[Writing Files/Reading Files](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Saves),[ Using Files](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Saves/SaveSettings.gd)|
|[Branching Choices](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#branching-choices)|[Code Decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Branching_Choices),[ UI decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Branching_Choices/Dialogue_Shop.gd), [Dialogue Decisions](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Branching_Choices/Dialogue_branching_Evidence.md)|
|[Documentation](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#documentation)|[Development of analysis of technology theories](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Documentation)|
|[Ethics](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins?tab=readme-ov-file#ethics)|Ethical issues from addiction, copyright infringement and layoffs|

## **Design** 


### [Player Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Player%20Design)

The first game the mini-game designed a ‘player’ by referring to the mouse via pre-built functions ```LookAt(mouseGlobalPosition);```. When [clicked](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/MiniGame_Player.cs), ```if (Input.IsActionJustPressed("click") && time_until_fire > _fireRate)``` another prebuilt function is used to let the user attack enemies and interact with the game. Initial Player designs used simple functions as any additional code for a mini-game would create unnecessary code for a mini-game however this built the foundations for the next assessment. The Save States '[player](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/SaveStates_Player.gd)' has  many more functions via the inbuilt velocity system in the [CharacterBody2D](https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#:~:text=moved%20by%20script.-,Description,physics%20bodies%20in%20their%20path.) node. Such examples include the dash increasing velocity speed.
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
A design for changing velocity was done so that Godot's physics engine could run all the logic for movement. These changes were necessary not only for immersion but also as the primary action in each of the games. However, the [weapon](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/SaveStates_Sword.gd) lacked variety for the user so alternatively I would have altered it by changing particles or sound to immerse the user. Because of this, the next assessment's [weapon](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/Dialogue_Weapon.gd) allowed for multiple different weapons to be chosen to have a variety. If this assessment were to be re-assigned then constant references to variables such as below would have instead used loops for fewer lines.
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
Due to time constraints looping through was not done as I considered it an elective choice. For future assignments, I would look to design a player that not only contains variety in movement and attack to immerse the player but also to design the players based on the environment to further increase immersion for the user.

### [Level Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Level%20Design)

The design of levels goes hand in hand with player design to immerse the player into the game. The core component of level design is the obstacles/enemies the user is presented with along with the theme of the maps. The mini-game incorporated a simple space [theme](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Level_Design_Evidence.md) its main assets are shown below.

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
Upon reflection the spawning system's design should have been altered to increase the amount of meteors spawned in increments rather than a constant rate. Additionally, the movement of the meteors should have been changed from 
```Vector2 centerPosition = new Vector2(576, 324); ``` getting a reference to referring to the player ```Vector2 centerPosition = GlobalRefrenceToPlayer.Position; ``` for changeability. The use of sprite [themes](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Level_Design_Evidence.md) remains constant throughout each assessment. However, the design of obstacles/enemies evolved to further immerse the player. For example, enemies in the saved state's assessment used detection to attack the player	indicated below.
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
Depending on the [saved state](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Saves) data its speed would then [alter](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Enemy%20Design/SaveStates_Bommer.gd) however, such a repetitive design though initially immersed lacked replayability so for the next assessment a 
[Navigation Agent Node](https://docs.godotengine.org/en/stable/tutorials/navigation/navigation_using_navigationagents.html),  a feature found on the godot read my form was used to find paths to the player instead of changing direction. And so for the dialogic assessment to improve replayability the enemies were changed to incorporate pathfinding.
![9c90ba6a-a3cc-41e8-9279-a729504ccad2](https://github.com/user-attachments/assets/26a48e6e-553b-44c3-b6a7-a8f61099559d)
To further expand on improved level design future assessments will combine the alteration of enemies via save states with complex logic of balancing the difficulty of enemies with pathfinding.

UI design throughout each game dev assessment remained consistent with small changes via modulated code. This is important as each [assessment](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Level%20Design/Level_Design_Evidence.md) continued to increase in size and time constraints pivoted to more reusable designs.

## **Saves**
File writing to the computer is important for all assessments that have been conducted in this unit as it allows for storing data and using the information for future assessments. The pizza assessments incorporate  ‘[orders](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Saves/Assigment_1_Pizza_System_Saves_Ethan_Perkins%20-%20Copy.py)’ writing to the files ```file.write(f"\n{value} {pizza} Pizza {size}  $"+str(value *int(Order[key[1]])))``` then 'presenting' this data in a txt file to the Pizzaiolo.

![image](https://github.com/user-attachments/assets/38cbc8ce-af4e-46ba-8f90-503ac0bd9102)

Then in a game design lens saving states with the same [writing](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Saves/save_file.gd) to the file system allowed for saving progress and altering the user's experience. Such as changing the difficulty of an enemy's ```velocity.x=SaveFile.g_data["bomb_speed"]```. Without File Writing the user's progress would vanish, reducing interest in the game. The same applies to the enemies which is why altering the enemy is foremost when making a game. Alternatively, the difficulty of enemies could be changed but that would decrease variety in itself so future assessments will continue to use saved data to engage the user but try to additionally improve the type of data that can be stored to increase the variety of the player.


## **Branching Choices**

Save States gives the user a feeling of progress, The Design immerses while different options create ‘[choice](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Branching_Choices)’.

Initially, choices were given by using ```while True:```  loops however this caused excessively long lines of code. 

![image](https://github.com/user-attachments/assets/f63c140c-576d-4941-861f-460553d8db99)

Because of this the branching decisions assignment used a similar system to the pizza assessment via a shop system. However instead of going through multiple lines of if statements dictionary loops were used instead.
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
By looping through the data as shown above the user can go through options while minimising the code for the developer. For future assessments when creating a branching output modulated code would be designed which would loop for a variable that contains interchangeable data and then present that to the user. Allowing for more options throughout the game to be made in a shorter time.

Research outside of class led me to this type of modulated system [dialogic](https://github.com/dialogic-godot/dialogic). Using such a system throughout the dialogic assessment to present story 'choices'.

![c078f1d2-a62d-4fc4-b9aa-2da6b53eff78](https://github.com/user-attachments/assets/d22e4872-a055-4087-a70a-d7e7f68856a5)

Taking the knowledge I already have I would build it much like my save states modulated code allowing making slots of information interchangeable. This could be done for a dialogue system by making a text file and then putting that text into a system that checks for characters when reading it before putting the text onto txt nodes.





## **Documentation** 

Presenting and analysing data throughout each assessment changed through assessments due to feedback given by teachers. The first assessment of a pizza system presented blocks upon blocks of code however upon feedback such presentation of data was [excessive](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Documentation/Assessment%20One%20(T)-Ethan%20PERKINS%20-%20Documentation.pdf) and unnecessary so the next assignment used snippets of code. 

![image](https://github.com/user-attachments/assets/0998052a-baa8-4260-8095-316669c373d9)

In this assessment, my teacher suggested to improve upon the following.

![image](https://github.com/user-attachments/assets/0ae9f164-b2c9-4782-acc3-7d81f5ba71ce)

And so for the save states assignment, every form of presentation outside of the documentation was linked for readability much like in this [repository](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main). 

![image](https://github.com/user-attachments/assets/b4bb8790-43fd-4328-8d57-23fc9929ca63)
Feedback from the most recent assessment highlights an issue in that was further identified in this assessment in that though recording data and presenting it is important how it is recorded is just as an important topic.

![image](https://github.com/user-attachments/assets/4cffe50b-b062-4c6f-9dba-e892bb086d04)

So on future assessments, I will try to improve upon naming files so that gathering evidence and reusing code for later is less difficult than this assignment made it be.

## **Ethics**  
Games are made to engage the player though the constant engagement highlights a variety of ethical issues. Game developers need to monetise their products to make a living to have a constant income so Implementations such as in-app purchases and advertisements are put into the game. However to keep user retention they not only have to monetise their product but keep the users engaged with the product.  A core example of such a product is Flappy Bird which caused “heavy addiction”(Bird, 2014) and so was closed down due to “guilt”(Bird, 2014). 

I am convinced that games designed to hook players and monetise them can be considered unethical as it's like any addiction from drinking to smoking/vaping. Though not as problematic as drugs such as addictions I think such practices should be minimised especially for children. A prime example of this is Fortnite in which neuroscientists found large dopamine releases when children played the game. (Anon, n.d.). With the game's prominent violent behaviours (Game, 2024) I believe young children's prolonged exposure to such products should be minimised especially games influencing behaviours such as violence and illegitimate practices.

I believe that the infringement of games by copying successful launches such as Flappy Bird and Stumble Guys is also unethical. Stubble guys racking in over “peaking at £309k”(Long, 2022) daily revenue in a game that was not even their idea. I believe that this becomes even worse when AI trains on un-bought data to design games from art and sound to coding and making whole products. Under the Intellectual property protection of video games, these forms of copyright from the artwork, scrips, sound effects and character design cannot be taken as they are “artistic work”(Pemberton, 2021). As AI becomes more and more prominent I believe that current issues in the industry such as layoffs due to “mergers and acquisitions” (Kim, 2023) Trend counties to increase

<img src="https://github.com/user-attachments/assets/732a854b-9bdc-41a5-8974-4f8b634841f8" width=800 height=400> (Statista, n.d.)

If AI continues to develop, the gradient of job loss will continue to increase with these jobs being taken off data that they made.

To conclude ethics for my games in the future, I will try to implement solutions to minimise addictions, especially regarding children. And continue to either create my assets or ensure that I follow the copyright rules under the products that I use.


## Bibliography
Anon, (n.d.). Fortnite Addiction – Knowles International. [online] Available at: https://knowlesinternational.com/fortnite-addiction/#:~:text=In%20a%20study%2C%20a%20neuroscientist.[Accessed 21 Sep. 2024].

Bird, F. (2014). Salient PR. [online] Salient PR. Available at: https://salientpr.com/blog/therealstorybehindwhyflappybirdwasdeleted [Accessed 21 Sep. 2024].

Dredge, S. (2014). Apple ban on Flappy Bird clones? Don’t tell Slappy Shark or Floppy Penguin. [online] the Guardian. Available at: https://www.theguardian.com/technology/2014/feb/17/flappy-bird-clones-apple-google [Accessed 21 Sep. 2024].

Kim, M. (2023). The Axe Drops on Gaming’s Acquisitions Gold Rush - IGN. [online] IGN. Available at: https://www.ign.com/articles/2023-video-games-layoffs-mergers-acquisitions-bungie [Accessed 23 Sep. 2024].

dialogic-godot (2024). GitHub - dialogic-godot/dialogic: 💬 Create Dialogs, Visual Novels, RPGs, and manage Characters with Godot to create your Game! [online] GitHub. Available at: https://github.com/dialogic-godot/dialogic.[Accessed 20 Sep. 2024].

Godot Engine documentation. (2024). CharacterBody2D. [online] Available at: https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#:~:text=moved%20by%20script.- [Accessed 19 Sep. 2024].

Godot Engine documentation. (2024). The main game scene. [online] Available at: https://docs.godotengine.org/en/stable/getting_started/first_2d_game/05.the_main_game_scene.html#spawning-mobs [Accessed 19 Sep. 2024].

Godot Engine documentation. (2024). Using NavigationAgents. [online] Available at: https://docs.godotengine.org/en/stable/tutorials/navigation/navigation_using_navigationagents.html [Accessed 19 Sep. 2024].

Long, N. (2022). Fall Guys clone Stumble Guys tops charts, racks up $21m+ revenue and 160m+ downloads to date. [online] Mobilegamer.biz. Available at: https://mobilegamer.biz/fall-guys-clone-stumble-guys-tops-charts-racks-up-21m-revenue-and-160m-downloads-to-date/. [Accessed 22 Sep. 2024].

‌Pemberton, S. (2021). [online] LegalVision. Available at: https://legalvision.com.au/intellectual-property-protection-video-games/ [Accessed 21 Sep. 2024].

Statista. (n.d.). Gaming layoffs worldwide 2024. [online] Available at: https://www.statista.com/statistics/1458214/worldwide-gaming-industry-layoffs/.[Accessed 22 Sep. 2024].


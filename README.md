# Evidence Guide Ethan_Perkins

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

## **Design** 

The composition of the assessments 
### [Player Design](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/tree/main/Design/Player%20Design)

The mini-game assessment was the first game that had a ‘player’ allowing the user to interact with the game. This was done by referring to the mouse via pre-built functions ```LookAt(mouseGlobalPosition);```. When [clicked](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/MiniGame_Player.cs), ```if (Input.IsActionJustPressed("click") && time_until_fire > _fireRate)``` another prebuilt function is used to let the user attack enemys and interact with the game. Inital Player designs used simple functions and alternative solutions would just create unessaryly blocky code however building upon these basic functions that reference the keyboard the SaveStates game contained a '[player](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/SaveStates_Player.gd)' with many more functions. Adding movment and a dash effect via the inbuilt velocity system in the [CharacterBody2D](https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#:~:text=moved%20by%20script.-,Description,physics%20bodies%20in%20their%20path.) node. The prebuilt velocity system was then altered depending on the input function contained in godot used in the mini-game assesment however the [weapon](https://github.com/sha5p/Assessment_2_Evidence_Guide_Ethan_Perkins/blob/main/Design/Player%20Design/SaveStates_Sword.gd) in this save state assesment lack varity for the user so alternativly if given more time I would have altered this aspect of the player either by particals or sound to immerse the user. 


### Enemy Design

### UI Design

### Level Desgin 


## **Saves** 

## **Branching Choices**

## **Documentation** 

## **Conclusion** 


## Bib

https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#:~:text=moved%20by%20script.-,Description,physics%20bodies%20in%20their%20path. 19/09/2024

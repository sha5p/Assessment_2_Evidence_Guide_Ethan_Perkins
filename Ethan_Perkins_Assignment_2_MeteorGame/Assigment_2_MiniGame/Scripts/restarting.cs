using System;
using Godot;
//Makes a class for the button under the name restarting 
public partial class restarting : Button
{
	public override void _Ready()
	{
		
	}
	private PackedScene click = (PackedScene)GD.Load("res://Click.tscn");
	//Creates a packedScene called _yesScene which loads the main game
	private void _on_button_down()
	{
		GetTree().ChangeSceneToPacked(click);// calls the packed scene
	}
}








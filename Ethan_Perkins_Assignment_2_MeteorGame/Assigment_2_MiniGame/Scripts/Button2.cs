using Godot;
using System;

public partial class Button2 : Button
{
	private PackedScene _yesScene = (PackedScene)GD.Load("res://SoundEffect2.tscn");
	private void _on_button_down()
	{		
		GetTree().ChangeSceneToPacked(_yesScene);
	}
}




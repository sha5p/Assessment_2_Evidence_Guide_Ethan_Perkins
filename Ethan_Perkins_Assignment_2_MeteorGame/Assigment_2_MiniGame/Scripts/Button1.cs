using System;
using Godot;

public partial class Button1 : Button
{
	public override void _Ready()
	{
		
	}
	private PackedScene click = (PackedScene)GD.Load("res://Click.tscn");
	private void _on_button_down()
	{
		GetTree().ChangeSceneToPacked(click);// calls the packed scene
	}
}











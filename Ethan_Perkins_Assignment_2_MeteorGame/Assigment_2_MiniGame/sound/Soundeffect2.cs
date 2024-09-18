using Godot;
using System;

public partial class Soundeffect2 : Node2D
{
	private PackedScene _yesScene = (PackedScene)GD.Load("res://main_menu.tscn");
	private void _on_audio_stream_player_2d_finished()
	{
		GetTree().ChangeSceneToPacked(_yesScene); // This will change the scene
	}
}

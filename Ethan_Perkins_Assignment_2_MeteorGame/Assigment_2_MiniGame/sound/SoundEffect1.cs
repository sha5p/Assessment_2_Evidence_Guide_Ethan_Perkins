using Godot;
using System;

public partial class SoundEffect1 : Node2D
{
	private PackedScene _yesScene = (PackedScene)GD.Load("res://main.tscn");
	private void _on_audio_stream_player_2d_finished()
	{
		GetTree().ChangeSceneToPacked(_yesScene); // This will change the scene
	}
}




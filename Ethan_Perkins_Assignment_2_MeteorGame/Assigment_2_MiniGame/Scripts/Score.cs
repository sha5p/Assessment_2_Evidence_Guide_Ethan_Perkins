using Godot;
using System;

public partial class Score : CanvasLayer
{
	int score;
	public override void _Ready()
	{
	}

	private void _on_update_score_timeout()
	{
		score += 1;//When  the timer emits sends signal and sends tto string
		GetNode<Label>("ScoreLabel").Text = score.ToString();
	}
	private void _on_ship_hit_box_2_area_entered(Area2D area)
	{
		var global = (Global)GetNode("/root/Global");
		global.current_score = score;
		score=0;//On death resets score sends to death screen along with info 
		var newScene = (PackedScene)GD.Load("res://Death.tscn");
		GetTree().ChangeSceneToPacked(newScene);// calls the packed scene
	}
}

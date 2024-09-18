using Godot;
using System;

public partial class Spawn : Node2D
{
	PackedScene packedScene;
	public override void _Ready()
	{
		GD.Print("Calls the Ready");
		GD.Randomize();
		packedScene=(PackedScene)GD.Load("res://Meteor.tscn");
	}
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
		{
			return;//This is for errors
		}
	// Set the progress to a random value between 0.0 and 1.0.
		float z = GD.Randf();//Sets a random value and then below random location 
		
		pathFollow.ProgressRatio  = z;
	// Set the position of the instantiated node to the position of the PathFollow2D node.
		float direction = pathFollow.Rotation + Mathf.Pi / 2;
		sam.Position = pathFollow.Position;
	// Add the instance to the scene tree.
		sam.Rotation = direction;
		AddChild(sam);
	}
		
	public override void _Process(double delta)
	{
		
	}
}

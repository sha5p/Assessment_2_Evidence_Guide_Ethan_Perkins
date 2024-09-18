using Godot;
using System;

public partial class Moving : Node2D
{
	[Export]
	public PackedScene MyPackedScene;

	public override void _Ready()
	{
	}
	public override void _Process(double delta)
	{
		Vector2 centerPosition = new Vector2(576, 324);
		Vector2 direction = (centerPosition - this.Position).Normalized();
		float speed = 2f;
		this.Position += direction * speed ;
	}
	private void _on_visible_on_screen_notifier_2d_screen_exited()
	{
		QueueFree();// Replace with function body.
	}
	// This is the correct signature for the input event handler in Godot C#
		private void _on_bang_area_entered(Area2D area)
	{ 
		QueueFree();// Replace with function body.
	}
}




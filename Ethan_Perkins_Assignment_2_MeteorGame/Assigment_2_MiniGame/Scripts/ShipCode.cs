using Godot;
using System;
using System.Threading.Tasks;//namespace for task using for the await 

public partial class ShipCode : Sprite2D
{
	private Area2D shipHitBox;//Make a varible for the hitbox for shooting

	public override void _Ready()
	{
		shipHitBox = GetNode<Area2D>("ShipHitBox2");//Actually gets the hitbox 
	}

	public override void _Process(double delta)
	{
		Vector2 mouseGlobalPosition = GetGlobalMousePosition();//On double deleta gets the mouse posistion 
		LookAt(mouseGlobalPosition);//sets the ship to mouse possition with look at
		if (Input.IsActionJustPressed("click"))
		{
		 Immortal();//calls function immortal which makes the ship immortal for 0.1 seconds when shooting to avoid a bug 
		}
	}
	public async Task Immortal()//Uses the async and the import system threading for a timer  to make the ship immortal as it gets the hitbox info 
	{
		shipHitBox.GetNode<CollisionShape2D>("CollisionShape2D").SetDeferred("disabled", true);
		await Task.Delay(100);//awaiits for a sec
		shipHitBox.GetNode<CollisionShape2D>("CollisionShape2D").Disabled = false;
		GD.Print("Finish");
	}
}

using Godot;
using System;

public partial class Gun : Node2D
{
	int click;
	int max_clicks_per_second = 5;
	[Export] public PackedScene BulletScene;
	[Export] public float BulletsPerSecond = 5f;
	[Export] public float BulletSpeed = 1000f;
	[Export] public float bullet_damage =30f;
	float _fireRate;
	float time_until_fire = 0f;//Makes a varity of varibles some which can be edited in the scene drop down 

	public override void _Ready() //on ready sets the fire rate to 1/5 used so bullets cant be spammed 
	{
		_fireRate = 1 / BulletsPerSecond;
	}
	public override void _Process(double delta)
	{

		if (Input.IsActionJustPressed("click") && time_until_fire > _fireRate)
		{
			click+=1;
			if (click > max_clicks_per_second)
			{
				GD.Print("bob");
			}
			//AudioStreamPlayer shoot = GetNode<AudioStreamPlayer>("Shoot");
			//shoot.Play(); This is an audio that is not working currently but could be emplmented by the person making the full game 
			RigidBody2D bullet = BulletScene.Instantiate<RigidBody2D>(); //Gets the Rigid body bullet scene
			bullet.GlobalPosition = new Vector2(576, 324); // sets spawn point to the the middle area could also be realtive to sprite 2d
			 // or set to a specific angle
			Vector2 mouseGlobalPosition = GetGlobalMousePosition();//Sets its direction to mouse
			bullet.LookAt(mouseGlobalPosition);//Sets direction to mouse 
			bullet.LinearVelocity = bullet.Transform.X*BulletSpeed;//Makes it move at the bullet speed set above 
			GetTree().Root.AddChild(bullet);//Adds it so it is visible
			time_until_fire = 0f;//allows for shooting again
		}
		else
		{
			time_until_fire +=(float)delta;//for delay 
		}
	}
}

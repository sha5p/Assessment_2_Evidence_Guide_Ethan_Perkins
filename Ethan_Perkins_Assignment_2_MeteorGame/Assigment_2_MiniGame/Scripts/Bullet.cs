using Godot;
using System;
using System.Threading.Tasks;//Using the same as above for awiaitng 

public partial class Bullet : RigidBody2D
{	
	public override void _Ready()
	{
		sam();//calls function to hide when bullet is instansiated for less jagged feel 
	}
	
	public void _on_body_entered(Node body)
	{
		QueueFree();	
	}
	public async Task sam()
	{
		Hide();
		await Task.Delay(100);
		Show();
	}
	public void _on_visible_on_screen_notifier_2d_screen_exited()
	{
		QueueFree(); //When leaves screen gets rid of for lag reasons
		GD.Print("Delete the bullet thing its works");
	}
}



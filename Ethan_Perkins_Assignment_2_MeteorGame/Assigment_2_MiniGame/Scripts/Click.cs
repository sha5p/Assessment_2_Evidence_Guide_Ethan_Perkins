using Godot;
using System;

public partial class Click : AudioStreamPlayer
{
	public override void _Ready()
	{
		// Set the volume to -10 decibels, which is quieter than the default
		VolumeDb = -10.0f;
	}

	private void _on_restarting_button_down()
	{
		// Play the audio when the button is pressed
		GD.Print("adadada");
		this.Play();
	}
}

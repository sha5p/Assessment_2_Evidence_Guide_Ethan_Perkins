using Godot;
using System;

public partial class Exit : Button
{
	private void _on_button_down()//When button pressed 
	{		
		GetTree().Quit();//Quit 
	}
}




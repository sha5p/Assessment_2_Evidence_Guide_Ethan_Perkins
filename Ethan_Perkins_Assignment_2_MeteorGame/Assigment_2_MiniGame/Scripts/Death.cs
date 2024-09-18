using Godot;
using System;

public partial class Death : Control
{
	public override void _Ready()
	{
	// Use CallDeferred to ensure the Label node is ready before accessing it
	CallDeferred(nameof(UpdateScoreLabel));
	}

	private void UpdateScoreLabel()
	{
	// Now it's safe to access the Label node
		var scoreLabel = GetNode<Label>("Current");
		var scoreLabelHigh = GetNode<Label>("High");
		var global = (Global)GetNode("/root/Global");
		scoreLabel.Text = global.current_score.ToString();
		
		 if (global.current_score > global.high_score)
		{
			GD.Print("checking");
			global.high_score = global.current_score;
			scoreLabelHigh.Text = global.high_score.ToString();
		}
		else
		{
			scoreLabelHigh.Text = global.high_score.ToString();
		}
	}
}

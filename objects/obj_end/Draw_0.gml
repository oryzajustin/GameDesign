/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 09C6F9BD
/// @DnDInput : 2
/// @DnDArgument : "var" "size"
/// @DnDArgument : "value" "2"
/// @DnDArgument : "var_1" "offset"
/// @DnDArgument : "value_1" "55"
var size = 2;
var offset = 55;

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 01806101
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A95715D
/// @DnDArgument : "var" "global.playerscores[1]"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "global.playerscores[2]"
if(global.playerscores[1] > global.playerscores[2])
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1A1D9BF3
	/// @DnDParent : 4A95715D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "size"
	/// @DnDArgument : "yscale" "size"
	/// @DnDArgument : "caption" ""Player 1 Wins""
	draw_text_transformed(x + 0, y + 0, string("Player 1 Wins") + "", size, size, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DE052DC
/// @DnDArgument : "var" "global.playerscores[2]"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "global.playerscores[1]"
if(global.playerscores[2] > global.playerscores[1])
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1EEB2E46
	/// @DnDParent : 5DE052DC
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "size"
	/// @DnDArgument : "yscale" "size"
	/// @DnDArgument : "caption" ""Player 2 Wins""
	draw_text_transformed(x + 0, y + 0, string("Player 2 Wins") + "", size, size, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3187B6B8
/// @DnDArgument : "var" "global.playerscores[2]"
/// @DnDArgument : "value" "global.playerscores[1]"
if(global.playerscores[2] == global.playerscores[1])
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 03094843
	/// @DnDParent : 3187B6B8
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "size"
	/// @DnDArgument : "yscale" "size"
	/// @DnDArgument : "caption" ""Draw""
	draw_text_transformed(x + 0, y + 0, string("Draw") + "", size, size, 0);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1AE09B38
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "offset"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Press Enter""
draw_text(x + 0, y + offset, string("Press Enter") + "");
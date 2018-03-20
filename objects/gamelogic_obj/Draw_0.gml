/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6BEC24AC
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Player 1 Score: ""
/// @DnDArgument : "var" "global.playerscores[1]"
draw_text(x + 0, y + 0, string("Player 1 Score: ") + string(global.playerscores[1]));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3D154ECA
/// @DnDArgument : "x" "800"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Player 2 Score: ""
/// @DnDArgument : "var" "global.playerscores[2]"
draw_text(x + 800, y + 0, string("Player 2 Score: ") + string(global.playerscores[2]));
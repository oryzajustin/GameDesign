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
/// @DnDArgument : "x" "760 "
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Player 2 Score: ""
/// @DnDArgument : "var" "global.playerscores[2]"
draw_text(x + 760 , y + 0, string("Player 2 Score: ") + string(global.playerscores[2]));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 03A9D70D
/// @DnDArgument : "x" "480"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "floor((alarm_get(1)/30-floor(script_execute(modulo,alarm_get(1)/30,60)))/60)"
draw_text(480, y + 0, string("") + string(floor((alarm_get(1)/30-floor(script_execute(modulo,alarm_get(1)/30,60)))/60)));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5816C062
/// @DnDArgument : "x" "482"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "" :""
/// @DnDArgument : "var" "string_replace(string_format(floor(script_execute(modulo,alarm_get(1)/30,60)),2,0)," ","0")"
draw_text(482, y + 0, string(" :") + string(string_replace(string_format(floor(script_execute(modulo,alarm_get(1)/30,60)),2,0)," ","0")));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0013E35F
/// @DnDArgument : "var" "global.hasScroll[1]"
/// @DnDArgument : "value" "1"
if(global.hasScroll[1] == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 376217FA
	/// @DnDParent : 0013E35F
	/// @DnDArgument : "x" "5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "15"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1/4"
	/// @DnDArgument : "yscale" "1/3"
	/// @DnDArgument : "sprite" "scroll_spr"
	/// @DnDSaveInfo : "sprite" "5345e688-5ff1-489c-888a-6a82a24a404b"
	draw_sprite_ext(scroll_spr, 0, x + 5, y + 15, 1/4, 1/3, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 505E8EDE
/// @DnDArgument : "var" "global.hasScroll[2]"
/// @DnDArgument : "value" "1"
if(global.hasScroll[2] == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1DB2C28F
	/// @DnDParent : 505E8EDE
	/// @DnDArgument : "x" "765"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "15"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1/4"
	/// @DnDArgument : "yscale" "1/3"
	/// @DnDArgument : "sprite" "scroll_spr"
	/// @DnDSaveInfo : "sprite" "5345e688-5ff1-489c-888a-6a82a24a404b"
	draw_sprite_ext(scroll_spr, 0, x + 765, y + 15, 1/4, 1/3, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6278442E
/// @DnDArgument : "var" "global.hasTrap[1]"
/// @DnDArgument : "op" "2"
if(global.hasTrap[1] > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 678C6AD5
	/// @DnDParent : 6278442E
	/// @DnDArgument : "x" "20"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "15"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1/4"
	/// @DnDArgument : "yscale" "1/3"
	/// @DnDArgument : "sprite" "trapPickup_spr"
	/// @DnDSaveInfo : "sprite" "8dc3bd1a-6ab1-4ec5-b1ab-0a02b3e91bae"
	draw_sprite_ext(trapPickup_spr, 0, x + 20, y + 15, 1/4, 1/3, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FEC13F4
/// @DnDArgument : "var" "global.hasTrap[2]"
/// @DnDArgument : "op" "2"
if(global.hasTrap[2] > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 26DCA129
	/// @DnDParent : 4FEC13F4
	/// @DnDArgument : "x" "780"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "15"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1/4"
	/// @DnDArgument : "yscale" "1/3"
	/// @DnDArgument : "sprite" "trapPickup_spr"
	/// @DnDSaveInfo : "sprite" "8dc3bd1a-6ab1-4ec5-b1ab-0a02b3e91bae"
	draw_sprite_ext(trapPickup_spr, 0, x + 780, y + 15, 1/4, 1/3, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
}
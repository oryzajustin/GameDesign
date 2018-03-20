/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 18B7DF79
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "trapPickup_obj"
/// @DnDSaveInfo : "object" "5597b08b-444e-4909-8863-5abddebff324"
var l18B7DF79_0 = instance_place(x + 0, y + 0, trapPickup_obj);
if ((l18B7DF79_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 5C0B5B65
	/// @DnDParent : 18B7DF79
	exit;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 707548D3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "wall_obj"
/// @DnDSaveInfo : "object" "0c57e7f1-7599-4574-8212-7f6c2c53e876"
var l707548D3_0 = instance_place(x + 0, y + 0, wall_obj);
if ((l707548D3_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 0D8C94E8
	/// @DnDParent : 707548D3
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 25F59CD9
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "fixed"
fixed = 1;
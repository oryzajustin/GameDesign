/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25545652
/// @DnDArgument : "var" "fixed"
/// @DnDArgument : "value" "1"
if(fixed == 1)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 143E7A22
	/// @DnDParent : 25545652
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "PickupsOnMap"
	global.PickupsOnMap += -1;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0FA9FDF4
instance_destroy();
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 04604AA1
/// @DnDArgument : "var" "fixed"
if(fixed == 0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5D63635D
	/// @DnDParent : 04604AA1
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "PickupsOnMap"
	global.PickupsOnMap += -1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4D8EDA1B
	/// @DnDParent : 04604AA1
	instance_destroy();
}
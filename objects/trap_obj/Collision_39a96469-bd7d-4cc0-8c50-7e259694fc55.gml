/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69D16D01
/// @DnDArgument : "var" "armed"
/// @DnDArgument : "value" "1"
if(armed == 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 771D1F11
	/// @DnDParent : 69D16D01
	instance_destroy();
}
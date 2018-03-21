/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 761EDEB4
/// @DnDArgument : "var" "global.ScrollOnMap"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(global.ScrollOnMap < 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7525D9EA
	/// @DnDParent : 761EDEB4
	/// @DnDArgument : "xpos" "500"
	/// @DnDArgument : "ypos" "380"
	/// @DnDArgument : "objectid" "scroll_obj"
	/// @DnDSaveInfo : "objectid" "7b91a114-853d-46a2-8a42-27de6a67ae0b"
	instance_create_layer(500, 380, "Instances", scroll_obj);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 55779E48
	/// @DnDParent : 761EDEB4
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "ScrollOnMap"
	global.ScrollOnMap = 1;
}
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
	/// @DnDArgument : "xpos" "505"
	/// @DnDArgument : "ypos" "425"
	/// @DnDArgument : "objectid" "scroll_obj"
	/// @DnDSaveInfo : "objectid" "5597b08b-444e-4909-8863-5abddebff324"
	instance_create_layer(505, 425, "Instances", scroll_obj);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 55779E48
	/// @DnDParent : 761EDEB4
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "ScrollOnMap"
	global.ScrollOnMap = 1;
}
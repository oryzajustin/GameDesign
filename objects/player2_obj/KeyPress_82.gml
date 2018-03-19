/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 618AB2D2
/// @DnDArgument : "var" "hasTrap"
/// @DnDArgument : "op" "2"
if(hasTrap > 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 63FB9C5D
	/// @DnDParent : 618AB2D2
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "trap_obj"
	/// @DnDSaveInfo : "objectid" "fad2aba9-09a4-4270-98b6-e52b010cdd63"
	instance_create_layer(x + 0, y + 0, "Instances", trap_obj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E60E59C
	/// @DnDParent : 618AB2D2
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hasTrap"
	hasTrap += -1;
}
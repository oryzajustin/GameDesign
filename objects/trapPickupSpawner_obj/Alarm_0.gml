/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 2B9A36F1
/// @DnDArgument : "times" "2"
repeat(2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13EF4293
	/// @DnDParent : 2B9A36F1
	/// @DnDArgument : "var" "global.PickupsOnMap"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "maxNum"
	if(global.PickupsOnMap < maxNum)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 74BA21E2
		/// @DnDParent : 13EF4293
		/// @DnDArgument : "xpos" "random_range(1,21)*40+65"
		/// @DnDArgument : "ypos" "random_range(1,15)*40+65"
		/// @DnDArgument : "objectid" "trapPickup_obj"
		/// @DnDSaveInfo : "objectid" "5597b08b-444e-4909-8863-5abddebff324"
		instance_create_layer(random_range(1,21)*40+65, random_range(1,15)*40+65, "Instances", trapPickup_obj);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 060CDBE9
		/// @DnDParent : 13EF4293
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "PickupsOnMap"
		global.PickupsOnMap += 1;
	}
}
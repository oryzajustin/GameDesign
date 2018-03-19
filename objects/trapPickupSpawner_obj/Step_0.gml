/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2EFAE2C6
/// @DnDArgument : "var" "global.PickupsOnMap"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "maxNum"
if(global.PickupsOnMap < maxNum)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D47D44E
	/// @DnDParent : 2EFAE2C6
	/// @DnDArgument : "var" "alarm_get(0)"
	/// @DnDArgument : "op" "1"
	if(alarm_get(0) < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 6767C84B
		/// @DnDParent : 2D47D44E
		/// @DnDArgument : "steps" "15"
		alarm_set(0, 15);
	}
}
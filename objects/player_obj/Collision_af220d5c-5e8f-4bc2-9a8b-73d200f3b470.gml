/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 534C046F
/// @DnDArgument : "var" "hasScroll"
/// @DnDArgument : "value" "1"
if(hasScroll == 1)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 4516673D
	/// @DnDParent : 534C046F
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "player1Score"
	global.player1Score += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75B6E40D
	/// @DnDParent : 534C046F
	/// @DnDArgument : "var" "hasScroll"
	/// @DnDArgument : "value" "1"
	if(hasScroll == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25046478
		/// @DnDParent : 75B6E40D
		/// @DnDArgument : "var" "hasScroll"
		hasScroll = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 4198E248
		/// @DnDParent : 75B6E40D
		/// @DnDArgument : "var" "ScrollOnMap"
		global.ScrollOnMap = 0;
	}
}
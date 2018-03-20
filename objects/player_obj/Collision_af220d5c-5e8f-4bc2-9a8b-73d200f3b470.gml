/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 48549325
/// @DnDArgument : "var" "tempId"
/// @DnDArgument : "value" "playerId"
var tempId = playerId;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 7959B878
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74CFC88C
	/// @DnDParent : 7959B878
	/// @DnDArgument : "var" "homeId"
	/// @DnDArgument : "value" "tempId"
	if(homeId == tempId)
	{
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 2356C91D
		/// @DnDApplyTo : other
		/// @DnDParent : 74CFC88C
		with(other) {
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 534C046F
			/// @DnDParent : 2356C91D
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
				/// @DnDArgument : "var" "playerscores[playerId]"
				global.playerscores[playerId] += 1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 25046478
				/// @DnDParent : 534C046F
				/// @DnDArgument : "var" "hasScroll"
				hasScroll = 0;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 4198E248
				/// @DnDParent : 534C046F
				/// @DnDArgument : "var" "ScrollsOnMap"
				global.ScrollsOnMap = 0;
			}
		}
	}
}
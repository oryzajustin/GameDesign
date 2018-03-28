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
			/// @DnDArgument : "var" "global.hasScroll[playerId]"
			/// @DnDArgument : "value" "1"
			if(global.hasScroll[playerId] == 1)
			{
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 4516673D
				/// @DnDParent : 534C046F
				/// @DnDArgument : "value" "100"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "var" "playerscores[playerId]"
				global.playerscores[playerId] += 100;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 3DD351E1
				/// @DnDParent : 534C046F
				/// @DnDArgument : "soundid" "scroll_score"
				/// @DnDSaveInfo : "soundid" "42c2ba5a-d5f0-46f0-9c04-3d5c8fb5766c"
				audio_play_sound(scroll_score, 0, 0);
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 36E9F882
				/// @DnDInput : 2
				/// @DnDParent : 534C046F
				/// @DnDArgument : "var" "hasScroll[playerId]"
				/// @DnDArgument : "var_1" "ScrollsOnMap"
				global.hasScroll[playerId] = 0;
				global.ScrollsOnMap = 0;
			}
		}
	}
}
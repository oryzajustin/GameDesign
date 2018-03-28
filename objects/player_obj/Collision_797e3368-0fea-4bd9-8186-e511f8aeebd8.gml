/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 417BAA74
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62365439
	/// @DnDParent : 417BAA74
	/// @DnDArgument : "var" "armed"
	/// @DnDArgument : "value" "1"
	if(armed == 1)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F900317
		/// @DnDParent : 62365439
		/// @DnDArgument : "var" "trapId"
		/// @DnDArgument : "value" "ownerId"
		var trapId = ownerId;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 6776DEA7
		/// @DnDApplyTo : other
		/// @DnDParent : 62365439
		with(other) {
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 78985D4F
			/// @DnDParent : 6776DEA7
			/// @DnDArgument : "var" "hasTrap[playerId]"
			global.hasTrap[playerId] = 0;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5C193F61
			/// @DnDParent : 6776DEA7
			/// @DnDArgument : "expr" "trapId == playerId"
			/// @DnDArgument : "not" "1"
			if(!(trapId == playerId))
			{
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 522B1731
				/// @DnDParent : 5C193F61
				/// @DnDArgument : "value" "25"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "var" "playerscores[trapId]"
				global.playerscores[trapId] += 25;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C87C668
			/// @DnDParent : 6776DEA7
			/// @DnDArgument : "var" "global.hasScroll[playerId]"
			/// @DnDArgument : "value" "1"
			if(global.hasScroll[playerId] == 1)
			{
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 41A4B9AC
				/// @DnDInput : 2
				/// @DnDParent : 6C87C668
				/// @DnDArgument : "var" "hasScroll[playerId]"
				/// @DnDArgument : "var_1" "ScrollsOnMap"
				global.hasScroll[playerId] = 0;
				global.ScrollsOnMap = 0;
			}
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 3E9DB54F
			/// @DnDParent : 6776DEA7
			/// @DnDArgument : "soundid" "player_dead"
			/// @DnDSaveInfo : "soundid" "a97d91b3-e873-49a1-9c14-c2d9a2e439c8"
			audio_play_sound(player_dead, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 720B7304
			/// @DnDInput : 6
			/// @DnDParent : 6776DEA7
			/// @DnDArgument : "expr" "home_x"
			/// @DnDArgument : "expr_1" "home_y"
			/// @DnDArgument : "expr_2" "home_x"
			/// @DnDArgument : "expr_3" "home_y"
			/// @DnDArgument : "expr_4" "home_x"
			/// @DnDArgument : "expr_5" "home_y"
			/// @DnDArgument : "var" "x_pos"
			/// @DnDArgument : "var_1" "y_pos"
			/// @DnDArgument : "var_2" "x_to"
			/// @DnDArgument : "var_3" "y_to"
			/// @DnDArgument : "var_4" "x_from"
			/// @DnDArgument : "var_5" "y_from"
			x_pos = home_x;
			y_pos = home_y;
			x_to = home_x;
			y_to = home_y;
			x_from = home_x;
			y_from = home_y;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 246C27CC
			/// @DnDParent : 6776DEA7
			/// @DnDArgument : "x" "home_x"
			/// @DnDArgument : "y" "home_y"
			x = home_x;
			y = home_y;
		}
	}
}
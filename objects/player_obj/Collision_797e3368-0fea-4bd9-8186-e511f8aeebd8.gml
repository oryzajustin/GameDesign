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
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 6776DEA7
		/// @DnDApplyTo : other
		/// @DnDParent : 62365439
		with(other) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47CE032B
			/// @DnDParent : 6776DEA7
			/// @DnDArgument : "var" "hasTrap"
			hasTrap = 0;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C87C668
			/// @DnDParent : 6776DEA7
			/// @DnDArgument : "var" "hasScroll"
			/// @DnDArgument : "value" "1"
			if(hasScroll == 1)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 74484471
				/// @DnDParent : 6C87C668
				/// @DnDArgument : "var" "hasScroll"
				hasScroll = 0;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 38EFA411
				/// @DnDParent : 6C87C668
				/// @DnDArgument : "var" "ScrollsOnMap"
				global.ScrollsOnMap = 0;
			}
		
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
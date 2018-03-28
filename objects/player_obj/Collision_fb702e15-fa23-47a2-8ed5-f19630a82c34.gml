/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 1694D733
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 584B51C2
	/// @DnDParent : 1694D733
	/// @DnDArgument : "var" "fixed"
	/// @DnDArgument : "value" "1"
	if(fixed == 1)
	{
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 044609EB
		/// @DnDApplyTo : other
		/// @DnDParent : 584B51C2
		with(other) {
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4D45F0CC
			/// @DnDParent : 044609EB
			/// @DnDArgument : "var" "global.hasTrap[playerId]"
			if(global.hasTrap[playerId] == 0)
			{
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 7F7F22A7
				/// @DnDParent : 4D45F0CC
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "var" "hasTrap[playerId]"
				global.hasTrap[playerId] = 1;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 4B745F5A
				/// @DnDParent : 4D45F0CC
				/// @DnDArgument : "soundid" "trap_pickup"
				/// @DnDSaveInfo : "soundid" "1007c48a-2c1f-46ea-b953-178004332fdd"
				audio_play_sound(trap_pickup, 0, 0);
			}
		}
	}
}
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F467D3B
/// @DnDArgument : "var" "global.player1Score"
/// @DnDArgument : "value" "5"
if(global.player1Score == 5)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 26CECCBA
	/// @DnDParent : 2F467D3B
	/// @DnDArgument : "room" "rm_title"
	/// @DnDSaveInfo : "room" "4ce28006-6a5d-44b2-84b6-d0e75b0837cc"
	room_goto(rm_title);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CE1C5EB
/// @DnDArgument : "var" "global.player2Score"
/// @DnDArgument : "value" "5"
if(global.player2Score == 5)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 50B1F163
	/// @DnDParent : 6CE1C5EB
	/// @DnDArgument : "room" "rm_title"
	/// @DnDSaveInfo : "room" "4ce28006-6a5d-44b2-84b6-d0e75b0837cc"
	room_goto(rm_title);
}
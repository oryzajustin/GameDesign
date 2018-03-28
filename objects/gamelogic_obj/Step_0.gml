/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 606A6F12
/// @DnDArgument : "var" "global.PlayersOnMap"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "maxNumOfPlayers"
while ((global.PlayersOnMap < maxNumOfPlayers)) {
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 50EECE27
	/// @DnDParent : 606A6F12
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "PlayersOnMap"
	global.PlayersOnMap += 1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 75123CD8
	/// @DnDParent : 606A6F12
	/// @DnDArgument : "xpos" "global.PlayerStartx[global.PlayersOnMap]"
	/// @DnDArgument : "ypos" "global.PlayerStarty[global.PlayersOnMap]"
	/// @DnDArgument : "objectid" "player_obj"
	/// @DnDArgument : "layer" ""Players""
	/// @DnDSaveInfo : "objectid" "93c063f7-2262-4ab7-9c62-6e3d75cdc17f"
	instance_create_layer(global.PlayerStartx[global.PlayersOnMap], global.PlayerStarty[global.PlayersOnMap], "Players", player_obj);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D2DAA65
	/// @DnDParent : 606A6F12
	/// @DnDArgument : "xpos" "global.PlayerStartx[global.PlayersOnMap]"
	/// @DnDArgument : "ypos" "global.PlayerStarty[global.PlayersOnMap]"
	/// @DnDArgument : "objectid" "home_obj"
	/// @DnDArgument : "layer" ""Objects""
	/// @DnDSaveInfo : "objectid" "b58c6af3-4cf8-4926-aec2-414e21f0f3db"
	instance_create_layer(global.PlayerStartx[global.PlayersOnMap], global.PlayerStarty[global.PlayersOnMap], "Objects", home_obj);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2EF022CA
/// @DnDArgument : "var" "global.PickupsOnMap"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "maxNumOfPickups"
if(global.PickupsOnMap < maxNumOfPickups)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AF115BE
	/// @DnDParent : 2EF022CA
	/// @DnDArgument : "var" "alarm_get(0)"
	/// @DnDArgument : "op" "1"
	if(alarm_get(0) < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 011424A9
		/// @DnDParent : 6AF115BE
		/// @DnDArgument : "steps" "PickupSpawndelay"
		alarm_set(0, PickupSpawndelay);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 761EDEB4
/// @DnDArgument : "var" "global.ScrollsOnMap"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(global.ScrollsOnMap < 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7525D9EA
	/// @DnDParent : 761EDEB4
	/// @DnDArgument : "xpos" "scrollx"
	/// @DnDArgument : "ypos" "scrolly"
	/// @DnDArgument : "objectid" "scroll_obj"
	/// @DnDArgument : "layer" ""Objects""
	/// @DnDSaveInfo : "objectid" "7b91a114-853d-46a2-8a42-27de6a67ae0b"
	instance_create_layer(scrollx, scrolly, "Objects", scroll_obj);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 55779E48
	/// @DnDParent : 761EDEB4
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "ScrollsOnMap"
	global.ScrollsOnMap = 1;
}
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08F6F111
/// @DnDArgument : "expr" "global.PlayersOnMap"
/// @DnDArgument : "var" "homeId"
homeId = global.PlayersOnMap;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 765055C2
/// @DnDArgument : "spriteind" "global.Matsprite[homeId]"
sprite_index = global.Matsprite[homeId];
image_index = 0;
/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 51E30D8C
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "hasScroll[playerId]"
global.hasScroll[playerId] = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 1C817C1C
/// @DnDArgument : "soundid" "scroll_pickup"
/// @DnDSaveInfo : "soundid" "36ef4db1-529f-46d8-91d6-71b3c951fa34"
audio_play_sound(scroll_pickup, 0, 0);
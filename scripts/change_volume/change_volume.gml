/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6376887A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var type = menu_option[page];$(13_10)$(13_10)switch(type)$(13_10){$(13_10)	case 0: audio_master_gain(argument0); break;//master$(13_10)	case 1: //sounds$(13_10)			audio_sound_gain(menu_enter,argument0,0);$(13_10)			audio_sound_gain(menu_cursor,argument0,0);$(13_10)			audio_sound_gain(trap_pickup,argument0,0);$(13_10)			audio_sound_gain(trap_place,argument0,0);$(13_10)			audio_sound_gain(scroll_score,argument0,0);$(13_10)			audio_sound_gain(scroll_pickup,argument0,0);$(13_10)			audio_sound_gain(player_dead,argument0,0);$(13_10)			audio_sound_gain(round_end,argument0,0);$(13_10)			break;$(13_10)	case 2: //bgm$(13_10)			audio_sound_gain(game_bgm,argument0,0);$(13_10)			audio_sound_gain(menu_bgm,argument0,0);$(13_10)			break;$(13_10)	$(13_10)}$(13_10)"
/// @description Execute Code
var type = menu_option[page];

switch(type)
{
	case 0: audio_master_gain(argument0); break;//master
	case 1: //sounds
			audio_sound_gain(menu_enter,argument0,0);
			audio_sound_gain(menu_cursor,argument0,0);
			audio_sound_gain(trap_pickup,argument0,0);
			audio_sound_gain(trap_place,argument0,0);
			audio_sound_gain(scroll_score,argument0,0);
			audio_sound_gain(scroll_pickup,argument0,0);
			audio_sound_gain(player_dead,argument0,0);
			audio_sound_gain(round_end,argument0,0);
			break;
	case 2: //bgm
			audio_sound_gain(game_bgm,argument0,0);
			audio_sound_gain(menu_bgm,argument0,0);
			break;
	
}
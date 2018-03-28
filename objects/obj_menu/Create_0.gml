/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 1DC68E57
/// @DnDArgument : "x" "camera_get_view_width(view_camera[0])/2 "
/// @DnDArgument : "y" "camera_get_view_height(view_camera[0])/2"
x = camera_get_view_width(view_camera[0])/2 ;
y = camera_get_view_height(view_camera[0])/2;

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 0DBC52BE
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 049A0917
/// @DnDArgument : "soundid" "menu_bgm"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "7b46d749-8c64-4a4d-9b4c-a2a57b8f7994"
audio_play_sound(menu_bgm, 0, 1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C712A1A
/// @DnDArgument : "code" "global.game_run = true; $(13_10)global.view_width = camera_get_view_width(view_camera[0]);$(13_10)global.view_height = camera_get_view_width(view_camera[0]);$(13_10)display_set_gui_size(global.view_width, global.view_height);$(13_10)global.key_enter = vk_enter;$(13_10)global.key_up = vk_up;$(13_10)global.key_left = vk_left;$(13_10)global.key_right = vk_right;$(13_10)global.key_down = vk_down;$(13_10)global.key_attack = vk_shift;$(13_10)global.round_time = 60;$(13_10)$(13_10)enum menu_page$(13_10){$(13_10)	title,$(13_10)	main,$(13_10)	settings,$(13_10)	gameOptions,$(13_10)	audio,$(13_10)	graphics,$(13_10)	controls,$(13_10)	controls1,$(13_10)	controls2,$(13_10)	height$(13_10)}$(13_10)$(13_10)enum menu_element_type$(13_10){$(13_10)	script_runner,$(13_10)	page_transfer,$(13_10)	slider,$(13_10)	shift,$(13_10)	toggle,$(13_10)	input,$(13_10)	alter$(13_10)}$(13_10)$(13_10)ds_title = create_menu_page($(13_10)	["Press Enter", menu_element_type.page_transfer, menu_page.main]$(13_10));$(13_10)$(13_10)ds_menu_main = create_menu_page(	$(13_10)	["Start", menu_element_type.page_transfer, menu_page.gameOptions],$(13_10)	["Settings", menu_element_type.page_transfer, menu_page.settings],$(13_10)	["Quit", menu_element_type.script_runner, exit_game]$(13_10));$(13_10)$(13_10)ds_settings = create_menu_page($(13_10)	["Audio", menu_element_type.page_transfer, menu_page.audio],$(13_10)	["Graphics", menu_element_type.page_transfer, menu_page.graphics] ,$(13_10)	["Controls", menu_element_type.page_transfer, menu_page.controls],$(13_10)	["Back", menu_element_type.page_transfer, menu_page.main]$(13_10));$(13_10)$(13_10)ds_gameOptions = create_menu_page($(13_10)	["Round Timer", menu_element_type.alter, "round_time",0,[60,90,120]],$(13_10)	["Start Game", menu_element_type.script_runner, start_game],$(13_10)	["Back", menu_element_type.page_transfer, menu_page.main]$(13_10));$(13_10)$(13_10)ds_audio = create_menu_page($(13_10)	["Master", menu_element_type.slider,  change_volume,1,[0,1]],$(13_10)	["Sounds", menu_element_type.slider, change_volume,1,[0,1]],$(13_10)	["Music", menu_element_type.slider, change_volume,0.45,[0,1]],$(13_10)	["Back", menu_element_type.page_transfer, menu_page.settings]$(13_10));$(13_10)$(13_10)ds_graphics = create_menu_page($(13_10)	["Resolution", menu_element_type.shift, change_resolution, 0, ["364 x 216","768 x 432", "1152 x 648"]],$(13_10)	["Window Mode", menu_element_type.toggle, change_window_mode,1,["Fullscreen","Windowed"]] ,$(13_10)	["Back", menu_element_type.page_transfer, menu_page.settings]$(13_10));$(13_10)ds_controls = create_menu_page($(13_10)	["Player 1", menu_element_type.page_transfer, menu_page.controls1],$(13_10)	["Player 2", menu_element_type.page_transfer, menu_page.controls2] ,$(13_10)	["Back", menu_element_type.page_transfer, menu_page.settings]$(13_10));$(13_10)$(13_10)ds_controls1 = create_menu_page($(13_10)	["Up", menu_element_type.input, "Player1Up", global.Player1Up],$(13_10)	["Left", menu_element_type.input, "Player1Left", global.Player1Left] ,$(13_10)	["Right", menu_element_type.input, "Player1Right",global.Player1Right],$(13_10)	["Down", menu_element_type.input, "Player1Down", global.Player1Down],$(13_10)	["PlaceTrap", menu_element_type.input, "Player1Place", global.Player1Place],$(13_10)	["Back", menu_element_type.page_transfer, menu_page.controls]$(13_10));$(13_10)$(13_10)ds_controls2 = create_menu_page($(13_10)	["Up", menu_element_type.input, "Player2Up", global.Player2Up],$(13_10)	["Left", menu_element_type.input, "Player2Left", global.Player2Left] ,$(13_10)	["Right", menu_element_type.input, "Player2Right",global.Player2Right],$(13_10)	["Down", menu_element_type.input, "Player2Down", global.Player2Down],$(13_10)	["PlaceTrap", menu_element_type.input, "Player2Place", global.Player2Place],$(13_10)	["Back", menu_element_type.page_transfer, menu_page.controls]$(13_10));$(13_10)$(13_10)page = 0;$(13_10)inputting = false;$(13_10)$(13_10)menu_pages = [ds_title,ds_menu_main, ds_settings, ds_gameOptions, ds_audio, ds_graphics, ds_controls, ds_controls1, ds_controls2];$(13_10)var i;$(13_10)for(i=0; i<array_length_1d(menu_pages); i++)$(13_10){$(13_10)	menu_option[i] = 0;$(13_10)}$(13_10)$(13_10)audio_group_load(audiogroup_default);$(13_10)"
global.game_run = true; 
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_width(view_camera[0]);
display_set_gui_size(global.view_width, global.view_height);
global.key_enter = vk_enter;
global.key_up = vk_up;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_down = vk_down;
global.key_attack = vk_shift;
global.round_time = 60;

enum menu_page
{
	title,
	main,
	settings,
	gameOptions,
	audio,
	graphics,
	controls,
	controls1,
	controls2,
	height
}

enum menu_element_type
{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input,
	alter
}

ds_title = create_menu_page(
	["Press Enter", menu_element_type.page_transfer, menu_page.main]
);

ds_menu_main = create_menu_page(	
	["Start", menu_element_type.page_transfer, menu_page.gameOptions],
	["Settings", menu_element_type.page_transfer, menu_page.settings],
	["Quit", menu_element_type.script_runner, exit_game]
);

ds_settings = create_menu_page(
	["Audio", menu_element_type.page_transfer, menu_page.audio],
	["Graphics", menu_element_type.page_transfer, menu_page.graphics] ,
	["Controls", menu_element_type.page_transfer, menu_page.controls],
	["Back", menu_element_type.page_transfer, menu_page.main]
);

ds_gameOptions = create_menu_page(
	["Round Timer", menu_element_type.alter, "round_time",0,[60,90,120]],
	["Start Game", menu_element_type.script_runner, start_game],
	["Back", menu_element_type.page_transfer, menu_page.main]
);

ds_audio = create_menu_page(
	["Master", menu_element_type.slider,  change_volume,1,[0,1]],
	["Sounds", menu_element_type.slider, change_volume,1,[0,1]],
	["Music", menu_element_type.slider, change_volume,0.45,[0,1]],
	["Back", menu_element_type.page_transfer, menu_page.settings]
);

ds_graphics = create_menu_page(
	["Resolution", menu_element_type.shift, change_resolution, 0, ["364 x 216","768 x 432", "1152 x 648"]],
	["Window Mode", menu_element_type.toggle, change_window_mode,1,["Fullscreen","Windowed"]] ,
	["Back", menu_element_type.page_transfer, menu_page.settings]
);
ds_controls = create_menu_page(
	["Player 1", menu_element_type.page_transfer, menu_page.controls1],
	["Player 2", menu_element_type.page_transfer, menu_page.controls2] ,
	["Back", menu_element_type.page_transfer, menu_page.settings]
);

ds_controls1 = create_menu_page(
	["Up", menu_element_type.input, "Player1Up", global.Player1Up],
	["Left", menu_element_type.input, "Player1Left", global.Player1Left] ,
	["Right", menu_element_type.input, "Player1Right",global.Player1Right],
	["Down", menu_element_type.input, "Player1Down", global.Player1Down],
	["PlaceTrap", menu_element_type.input, "Player1Place", global.Player1Place],
	["Back", menu_element_type.page_transfer, menu_page.controls]
);

ds_controls2 = create_menu_page(
	["Up", menu_element_type.input, "Player2Up", global.Player2Up],
	["Left", menu_element_type.input, "Player2Left", global.Player2Left] ,
	["Right", menu_element_type.input, "Player2Right",global.Player2Right],
	["Down", menu_element_type.input, "Player2Down", global.Player2Down],
	["PlaceTrap", menu_element_type.input, "Player2Place", global.Player2Place],
	["Back", menu_element_type.page_transfer, menu_page.controls]
);

page = 0;
inputting = false;

menu_pages = [ds_title,ds_menu_main, ds_settings, ds_gameOptions, ds_audio, ds_graphics, ds_controls, ds_controls1, ds_controls2];
var i;
for(i=0; i<array_length_1d(menu_pages); i++)
{
	menu_option[i] = 0;
}

audio_group_load(audiogroup_default);
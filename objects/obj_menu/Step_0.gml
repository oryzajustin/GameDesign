/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 334DDB66
/// @DnDArgument : "code" "input_up_p = keyboard_check_pressed(global.key_up);$(13_10)input_down_p = keyboard_check_pressed(global.key_down);$(13_10)input_enter_p = keyboard_check_pressed(vk_enter);$(13_10)$(13_10)var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);$(13_10)$(13_10)var ochange = input_down_p - input_up_p;$(13_10)if(inputting)$(13_10){$(13_10)	switch(ds_grid[# 1, menu_option[page]])$(13_10)	{$(13_10)		case menu_element_type.shift: $(13_10)			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);$(13_10)			if(hinput!=0)$(13_10)			{$(13_10)				//audio feedback here $(13_10)				ds_grid[# 3,menu_option[page]] += hinput;$(13_10)				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]])-1);$(13_10)			}$(13_10)		break;$(13_10)		case menu_element_type.alter: $(13_10)			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);$(13_10)			if(hinput!=0)$(13_10)			{$(13_10)				//audio feedback here $(13_10)				ds_grid[# 3,menu_option[page]] += hinput;$(13_10)				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]])-1);$(13_10)			}$(13_10)			var currentval = ds_grid[# 3,menu_option[page]];$(13_10)			var currentarray = ds_grid[# 4, menu_option[page]];$(13_10)			variable_global_set(ds_grid[# 2, menu_option[page]], currentarray[currentval]);$(13_10)		break;$(13_10)		case menu_element_type.slider:$(13_10)			$(13_10)			var hinput = keyboard_check(global.key_right) - keyboard_check(global.key_left);$(13_10)			if(hinput!=0)$(13_10)			{$(13_10)				//audio feedback here $(13_10)				ds_grid[# 3,menu_option[page]] += hinput*0.01;$(13_10)				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);$(13_10)				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);$(13_10)			}$(13_10)		break;$(13_10)		case menu_element_type.toggle:$(13_10)			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);$(13_10)			if(hinput!=0)$(13_10)			{$(13_10)				//audio feedback here$(13_10)				ds_grid[# 3,menu_option[page]] += hinput;$(13_10)				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]])-1);$(13_10)			}$(13_10)		break;$(13_10)		case menu_element_type.input:$(13_10)			var key_check = keyboard_lastkey;$(13_10)			if(key_check != vk_enter)$(13_10)			{$(13_10)				ds_grid[# 3,menu_option[page]] = key_check;$(13_10)				variable_global_set(ds_grid[# 2, menu_option[page]], key_check);$(13_10)			}$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)	menu_option[page] = modulo((menu_option[page] + ochange), ds_height);	$(13_10)}$(13_10)$(13_10)if(input_enter_p)$(13_10){$(13_10)	switch(ds_grid[# 1, menu_option[page]])$(13_10)	{$(13_10)		case menu_element_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]]); break;$(13_10)		case menu_element_type.page_transfer: page = ds_grid[# 2,menu_option[page]]; break;$(13_10)		case menu_element_type.shift: $(13_10)			if(inputting)$(13_10)			{$(13_10)				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]], ds_grid[# 4, menu_option[page]])$(13_10)			}$(13_10)		case menu_element_type.slider:$(13_10)		case menu_element_type.toggle:$(13_10)			if(inputting)$(13_10)			{$(13_10)				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);$(13_10)			}$(13_10)		case menu_element_type.alter:$(13_10)		case menu_element_type.input:$(13_10)			inputting=!inputting;$(13_10)			break;$(13_10)	}$(13_10)$(13_10)}$(13_10)"
input_up_p = keyboard_check_pressed(global.key_up);
input_down_p = keyboard_check_pressed(global.key_down);
input_enter_p = keyboard_check_pressed(vk_enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

var ochange = input_down_p - input_up_p;
if(inputting)
{
	switch(ds_grid[# 1, menu_option[page]])
	{
		case menu_element_type.shift: 
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput!=0)
			{
				//audio feedback here 
				ds_grid[# 3,menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]])-1);
			}
		break;
		case menu_element_type.alter: 
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput!=0)
			{
				//audio feedback here 
				ds_grid[# 3,menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]])-1);
			}
			var currentval = ds_grid[# 3,menu_option[page]];
			var currentarray = ds_grid[# 4, menu_option[page]];
			variable_global_set(ds_grid[# 2, menu_option[page]], currentarray[currentval]);
		break;
		case menu_element_type.slider:
			
			var hinput = keyboard_check(global.key_right) - keyboard_check(global.key_left);
			if(hinput!=0)
			{
				//audio feedback here 
				ds_grid[# 3,menu_option[page]] += hinput*0.01;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);
			}
		break;
		case menu_element_type.toggle:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput!=0)
			{
				//audio feedback here
				ds_grid[# 3,menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]])-1);
			}
		break;
		case menu_element_type.input:
			var key_check = keyboard_lastkey;
			if(key_check != vk_enter)
			{
				ds_grid[# 3,menu_option[page]] = key_check;
				variable_global_set(ds_grid[# 2, menu_option[page]], key_check);
			}
		break;
	}
}
else
{
	menu_option[page] = modulo((menu_option[page] + ochange), ds_height);	
}

if(input_enter_p)
{
	switch(ds_grid[# 1, menu_option[page]])
	{
		case menu_element_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]]); break;
		case menu_element_type.page_transfer: page = ds_grid[# 2,menu_option[page]]; break;
		case menu_element_type.shift: 
			if(inputting)
			{
				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]], ds_grid[# 4, menu_option[page]])
			}
		case menu_element_type.slider:
		case menu_element_type.toggle:
			if(inputting)
			{
				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);
			}
		case menu_element_type.alter:
		case menu_element_type.input:
			inputting=!inputting;
			break;
	}

}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 6E9E491A
/// @DnDArgument : "key" "vk_up"
var l6E9E491A_0;
l6E9E491A_0 = keyboard_check_pressed(vk_up);
if (l6E9E491A_0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1605C2DB
	/// @DnDParent : 6E9E491A
	/// @DnDArgument : "soundid" "menu_cursor"
	/// @DnDSaveInfo : "soundid" "074c95f9-76c0-4b89-91f1-fc03c628df47"
	audio_play_sound(menu_cursor, 0, 0);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 5958E6D9
/// @DnDArgument : "key" "vk_down"
var l5958E6D9_0;
l5958E6D9_0 = keyboard_check_pressed(vk_down);
if (l5958E6D9_0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 791DFCA4
	/// @DnDParent : 5958E6D9
	/// @DnDArgument : "soundid" "menu_cursor"
	/// @DnDSaveInfo : "soundid" "074c95f9-76c0-4b89-91f1-fc03c628df47"
	audio_play_sound(menu_cursor, 0, 0);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 47D032F8
/// @DnDArgument : "key" "vk_enter"
var l47D032F8_0;
l47D032F8_0 = keyboard_check_pressed(vk_enter);
if (l47D032F8_0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1B7C2695
	/// @DnDParent : 47D032F8
	/// @DnDArgument : "soundid" "menu_cursor"
	/// @DnDSaveInfo : "soundid" "074c95f9-76c0-4b89-91f1-fc03c628df47"
	audio_play_sound(menu_cursor, 0, 0);
}
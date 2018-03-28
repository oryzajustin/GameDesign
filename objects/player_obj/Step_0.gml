/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D895D2A
/// @DnDArgument : "code" "//movement code$(13_10)if (state == states.walking){$(13_10)	walk_anim_time += 1;//delta_time / 1000000;$(13_10)	var t = walk_anim_time / walk_anim_length;$(13_10)	$(13_10)	if (t >=1){$(13_10)		walk_anim_time = 0;$(13_10)		t = 1;$(13_10)		state = states.idle;$(13_10)	}$(13_10)$(13_10)	var _x = lerp(x_from, x_to, t);$(13_10)	var _y = lerp(y_from, y_to, t);$(13_10)	$(13_10)	x = _x;$(13_10)	y = _y;$(13_10)	$(13_10)	image_index = frames[floor((walk_anim_frames - 1) * t)];$(13_10)	$(13_10)}"
//movement code
if (state == states.walking){
	walk_anim_time += 1;//delta_time / 1000000;
	var t = walk_anim_time / walk_anim_length;
	
	if (t >=1){
		walk_anim_time = 0;
		t = 1;
		state = states.idle;
	}

	var _x = lerp(x_from, x_to, t);
	var _y = lerp(y_from, y_to, t);
	
	x = _x;
	y = _y;
	
	image_index = frames[floor((walk_anim_frames - 1) * t)];
	
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FD10A09
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "states.idle"
if(state == states.idle)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3CCD61B3
	/// @DnDParent : 7FD10A09
	/// @DnDArgument : "key" "upkey"
	var l3CCD61B3_0;
	l3CCD61B3_0 = keyboard_check(upkey);
	if (l3CCD61B3_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6C1228ED
		/// @DnDParent : 3CCD61B3
		/// @DnDArgument : "script" "move"
		/// @DnDArgument : "arg" "directions.up"
		/// @DnDSaveInfo : "script" "d3c21a1f-e4d9-4ad7-bc8b-684b786f2a79"
		script_execute(move, directions.up);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 209F7FA1
	/// @DnDParent : 7FD10A09
	/// @DnDArgument : "key" "downkey"
	var l209F7FA1_0;
	l209F7FA1_0 = keyboard_check(downkey);
	if (l209F7FA1_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7E49D89E
		/// @DnDParent : 209F7FA1
		/// @DnDArgument : "script" "move"
		/// @DnDArgument : "arg" "directions.down"
		/// @DnDSaveInfo : "script" "d3c21a1f-e4d9-4ad7-bc8b-684b786f2a79"
		script_execute(move, directions.down);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 279B28CA
	/// @DnDParent : 7FD10A09
	/// @DnDArgument : "key" "leftkey"
	var l279B28CA_0;
	l279B28CA_0 = keyboard_check(leftkey);
	if (l279B28CA_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 03776C9B
		/// @DnDParent : 279B28CA
		/// @DnDArgument : "script" "move"
		/// @DnDArgument : "arg" "directions.left"
		/// @DnDSaveInfo : "script" "d3c21a1f-e4d9-4ad7-bc8b-684b786f2a79"
		script_execute(move, directions.left);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 70ADBA5B
	/// @DnDParent : 7FD10A09
	/// @DnDArgument : "key" "rightkey"
	var l70ADBA5B_0;
	l70ADBA5B_0 = keyboard_check(rightkey);
	if (l70ADBA5B_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 24C3E527
		/// @DnDParent : 70ADBA5B
		/// @DnDArgument : "script" "move"
		/// @DnDArgument : "arg" "directions.right"
		/// @DnDSaveInfo : "script" "d3c21a1f-e4d9-4ad7-bc8b-684b786f2a79"
		script_execute(move, directions.right);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 02666D50
/// @DnDArgument : "key" "placekey"
var l02666D50_0;
l02666D50_0 = keyboard_check(placekey);
if (l02666D50_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 669AFED9
	/// @DnDParent : 02666D50
	/// @DnDArgument : "var" "global.hasTrap[playerId]"
	/// @DnDArgument : "op" "2"
	if(global.hasTrap[playerId] > 0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 410C9BA2
		/// @DnDParent : 669AFED9
		/// @DnDArgument : "code" "trap = instance_create_layer(x_pos,y_pos,"Objects",trap_obj)$(13_10)trap.ownerId = playerId;$(13_10)"
		trap = instance_create_layer(x_pos,y_pos,"Objects",trap_obj)
		trap.ownerId = playerId;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 4ACB2AE4
		/// @DnDParent : 669AFED9
		/// @DnDArgument : "value" "-1"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "hasTrap[playerId]"
		global.hasTrap[playerId] += -1;
	}
}
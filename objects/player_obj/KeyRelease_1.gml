/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 36C67038
/// @DnDArgument : "key" "upkey"
/// @DnDArgument : "not" "1"
var l36C67038_0;
l36C67038_0 = keyboard_check(upkey);
if (!l36C67038_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 50762C5B
	/// @DnDParent : 36C67038
	/// @DnDArgument : "key" "downkey"
	/// @DnDArgument : "not" "1"
	var l50762C5B_0;
	l50762C5B_0 = keyboard_check(downkey);
	if (!l50762C5B_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2CEE7046
		/// @DnDParent : 50762C5B
		/// @DnDArgument : "type" "2"
		vspeed = 0;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6861F2B5
/// @DnDArgument : "key" "leftkey"
/// @DnDArgument : "not" "1"
var l6861F2B5_0;
l6861F2B5_0 = keyboard_check(leftkey);
if (!l6861F2B5_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 785BF6E6
	/// @DnDParent : 6861F2B5
	/// @DnDArgument : "key" "rightkey"
	/// @DnDArgument : "not" "1"
	var l785BF6E6_0;
	l785BF6E6_0 = keyboard_check(rightkey);
	if (!l785BF6E6_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 42BDFF4C
		/// @DnDParent : 785BF6E6
		/// @DnDArgument : "type" "1"
		hspeed = 0;
	}
}
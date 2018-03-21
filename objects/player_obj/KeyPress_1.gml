/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0F7E0343
/// @DnDArgument : "key" "leftkey"
var l0F7E0343_0;
l0F7E0343_0 = keyboard_check(leftkey);
if (l0F7E0343_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 75FD6AB0
	/// @DnDParent : 0F7E0343
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 60807ED5
	/// @DnDParent : 0F7E0343
	/// @DnDArgument : "speed" "-movespeed"
	/// @DnDArgument : "type" "1"
	hspeed = -movespeed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6B3B0020
/// @DnDArgument : "key" "rightkey"
var l6B3B0020_0;
l6B3B0020_0 = keyboard_check(rightkey);
if (l6B3B0020_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5743BAF9
	/// @DnDParent : 6B3B0020
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7E61601B
	/// @DnDParent : 6B3B0020
	/// @DnDArgument : "speed" "movespeed"
	/// @DnDArgument : "type" "1"
	hspeed = movespeed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1D4E0552
/// @DnDArgument : "key" "upkey"
var l1D4E0552_0;
l1D4E0552_0 = keyboard_check(upkey);
if (l1D4E0552_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5B448F87
	/// @DnDParent : 1D4E0552
	/// @DnDArgument : "speed" "-movespeed"
	/// @DnDArgument : "type" "2"
	vspeed = -movespeed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6E8D8D5A
/// @DnDArgument : "key" "downkey"
var l6E8D8D5A_0;
l6E8D8D5A_0 = keyboard_check(downkey);
if (l6E8D8D5A_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3744CCEF
	/// @DnDParent : 6E8D8D5A
	/// @DnDArgument : "speed" "movespeed"
	/// @DnDArgument : "type" "2"
	vspeed = movespeed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4875A6A7
/// @DnDArgument : "key" "placekey"
var l4875A6A7_0;
l4875A6A7_0 = keyboard_check(placekey);
if (l4875A6A7_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A89BD77
	/// @DnDParent : 4875A6A7
	/// @DnDArgument : "var" "hasTrap"
	/// @DnDArgument : "op" "2"
	if(hasTrap > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 16D37487
		/// @DnDParent : 2A89BD77
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "trap_obj"
		/// @DnDSaveInfo : "objectid" "7ab77171-8312-4dab-8ed8-964a445e5629"
		instance_create_layer(x + 0, y + 0, "Instances", trap_obj);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 154D4F52
		/// @DnDParent : 2A89BD77
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hasTrap"
		hasTrap += -1;
	}
}
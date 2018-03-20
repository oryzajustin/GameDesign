/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37C4FCE1
/// @DnDArgument : "var" "fixed"
if(fixed == 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 767C51A4
	/// @DnDParent : 37C4FCE1
	/// @DnDArgument : "x" "script_execute(randompickx)"
	/// @DnDArgument : "y" "script_execute(randompicky)"
	x = script_execute(randompickx);
	y = script_execute(randompicky);
}
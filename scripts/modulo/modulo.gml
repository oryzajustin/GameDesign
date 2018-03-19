/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 03EE3567
/// @DnDArgument : "code" "if(argument[1] < 0) Q = ceil(argument[0]/argument[1]);$(13_10)else Q = floor(argument[0]/argument[1]);$(13_10)$(13_10)return argument[0] - (Q*argument[1]);$(13_10)"
if(argument[1] < 0) Q = ceil(argument[0]/argument[1]);
else Q = floor(argument[0]/argument[1]);

return argument[0] - (Q*argument[1]);
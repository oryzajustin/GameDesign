/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D544DAC
/// @DnDArgument : "code" "global.Player1Left = 65$(13_10)global.Player1Right = 68$(13_10)global.Player1Up = 87$(13_10)global.Player1Down = 83$(13_10)global.Player1Place = 81$(13_10)global.Player2Left = 37$(13_10)global.Player2Right = 39$(13_10)global.Player2Up = 38$(13_10)global.Player2Down = 40$(13_10)global.Player2Place = 191"
global.Player1Left = 65
global.Player1Right = 68
global.Player1Up = 87
global.Player1Down = 83
global.Player1Place = 81
global.Player2Left = 37
global.Player2Right = 39
global.Player2Up = 38
global.Player2Down = 40
global.Player2Place = 191

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 4E08B96B
/// @DnDArgument : "x" "camera_get_view_width(view_camera[0])/2"
/// @DnDArgument : "y" "camera_get_view_height(view_camera[0])/2"
x = camera_get_view_width(view_camera[0])/2;
y = camera_get_view_height(view_camera[0])/2;
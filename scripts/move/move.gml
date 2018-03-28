/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 061CEDEC
/// @DnDArgument : "code" "//movement code$(13_10)var dir = argument0;$(13_10)var components = global.components[dir];$(13_10)var dx = components[0];$(13_10)var dy = components[1];$(13_10)$(13_10)if (state == states.idle){$(13_10)	if !(place_meeting(x_pos + dx,y_pos + dy,wall_obj)){$(13_10)		x_from = x_pos;$(13_10)		y_from = y_pos;$(13_10)	$(13_10)		x_to = x_pos + dx;$(13_10)		y_to = y_pos + dy;$(13_10)		$(13_10)		x_pos = x_to;$(13_10)		y_pos = y_to;$(13_10)		$(13_10)		state = states.walking;$(13_10)		sprite_index = sprite[dir];$(13_10)	}$(13_10)}"
//movement code
var dir = argument0;
var components = global.components[dir];
var dx = components[0];
var dy = components[1];

if (state == states.idle){
	if !(place_meeting(x_pos + dx,y_pos + dy,wall_obj)){
		x_from = x_pos;
		y_from = y_pos;
	
		x_to = x_pos + dx;
		y_to = y_pos + dy;
		
		x_pos = x_to;
		y_pos = y_to;
		
		state = states.walking;
		sprite_index = sprite[dir];
	}
}
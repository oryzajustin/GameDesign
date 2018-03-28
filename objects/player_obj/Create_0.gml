/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31ECF69B
/// @DnDArgument : "code" "playerId = global.PlayersOnMap;$(13_10)$(13_10)leftkey = global.PlayerLeft[playerId];$(13_10)rightkey = global.PlayerRight[playerId];$(13_10)upkey = global.PlayerUp[playerId];$(13_10)downkey = global.PlayerDown[playerId];$(13_10)placekey = global.PlayerPlace[playerId];$(13_10)$(13_10)home_x = global.PlayerStartx[playerId];$(13_10)home_y = global.PlayerStarty[playerId];$(13_10)$(13_10)sprite_index = global.Playersprite[playerId];$(13_10)$(13_10)global.playerscores[playerId] = 0$(13_10)global.hasTrap[playerId] = 0$(13_10)global.hasScroll[playerId] = 0$(13_10)$(13_10)enum states {$(13_10)	idle,$(13_10)	walking$(13_10)}$(13_10)$(13_10)state = states.idle;$(13_10)x_pos = x;$(13_10)y_pos = y;$(13_10)x_from = x_pos;$(13_10)y_from = y_pos;$(13_10)x_to = x_pos;$(13_10)y_to = y_pos;$(13_10)$(13_10)walk_anim_length = 6;$(13_10)walk_anim_time = 0;$(13_10)$(13_10)image_speed = 0;$(13_10)frames = [0,1,2,3,2,0];$(13_10)walk_anim_frames = 6;$(13_10)$(13_10)sprite[directions.right] = sprite_index;$(13_10)sprite[directions.left] = sprite_index;$(13_10)sprite[directions.up] = sprite_index;$(13_10)sprite[directions.down] = sprite_index;"
playerId = global.PlayersOnMap;

leftkey = global.PlayerLeft[playerId];
rightkey = global.PlayerRight[playerId];
upkey = global.PlayerUp[playerId];
downkey = global.PlayerDown[playerId];
placekey = global.PlayerPlace[playerId];

home_x = global.PlayerStartx[playerId];
home_y = global.PlayerStarty[playerId];

sprite_index = global.Playersprite[playerId];

global.playerscores[playerId] = 0
global.hasTrap[playerId] = 0
global.hasScroll[playerId] = 0

enum states {
	idle,
	walking
}

state = states.idle;
x_pos = x;
y_pos = y;
x_from = x_pos;
y_from = y_pos;
x_to = x_pos;
y_to = y_pos;

walk_anim_length = 6;
walk_anim_time = 0;

image_speed = 0;
frames = [0,1,2,3,2,0];
walk_anim_frames = 6;

sprite[directions.right] = sprite_index;
sprite[directions.left] = sprite_index;
sprite[directions.up] = sprite_index;
sprite[directions.down] = sprite_index;
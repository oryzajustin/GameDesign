/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31ECF69B
/// @DnDArgument : "code" "playerId = global.PlayersOnMap;$(13_10)$(13_10)leftkey = global.PlayerLeft[playerId];$(13_10)rightkey = global.PlayerRight[playerId];$(13_10)upkey = global.PlayerUp[playerId];$(13_10)downkey = global.PlayerDown[playerId];$(13_10)placekey = global.PlayerPlace[playerId];$(13_10)$(13_10)home_x = global.PlayerStartx[playerId];$(13_10)home_y = global.PlayerStarty[playerId];$(13_10)$(13_10)sprite_index = global.Playersprite[playerId];$(13_10)$(13_10)global.playerscores[playerId] = 0$(13_10)movespeed = 5;$(13_10)hasTrap = 0;$(13_10)hasScroll = 0;$(13_10)"
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
movespeed = 5;
hasTrap = 0;
hasScroll = 0;
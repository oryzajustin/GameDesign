/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62E52D86
/// @DnDArgument : "code" "randomize()$(13_10)$(13_10)//Pickups$(13_10)maxNumOfPickups = 10$(13_10)PickupSpawndelay = 25$(13_10)PickupsSpawnedAtaTime = 3$(13_10)$(13_10)//Map$(13_10)global.tilesize=40$(13_10)global.topleftx=100$(13_10)global.toplefty=100$(13_10)global.bottomrightx=900$(13_10)global.bottomrighty=660$(13_10)$(13_10)//Sprites$(13_10)global.Playersprite[1] = player1_spr$(13_10)global.Matsprite[1] = redmat_spr$(13_10)global.Playersprite[2] = player2_spr$(13_10)global.Matsprite[2] = bluemat_spr$(13_10)$(13_10)//Movement Code Do Not Edit$(13_10)enum directions {$(13_10)	right,$(13_10)	up,$(13_10)	left,$(13_10)	down$(13_10)}$(13_10)$(13_10)global.components = []$(13_10)global.components[directions.right] = [global.tilesize,0]$(13_10)global.components[directions.up] = [0,-global.tilesize]$(13_10)global.components[directions.left] = [-global.tilesize,0]$(13_10)global.components[directions.down] = [0,global.tilesize]$(13_10)$(13_10)//Default Variables Do Not Edit$(13_10)maxNumOfPlayers = 2$(13_10)global.PlayersOnMap = 0$(13_10)global.PickupsOnMap = 0$(13_10)global.ScrollsOnMap = 0$(13_10)$(13_10)//Handled Elsewhere Do Not Edit$(13_10)alarm_set(1,global.round_time*30)$(13_10)alarm_set(2,(global.round_time-3)*30-15)$(13_10)$(13_10)scrollx = (global.topleftx+global.bottomrightx)/2$(13_10)scrolly = (global.toplefty+global.bottomrighty)/2$(13_10)$(13_10)global.PlayerStartx[1] = global.topleftx$(13_10)global.PlayerStarty[1] = global.toplefty$(13_10)$(13_10)global.PlayerStartx[2] = global.bottomrightx$(13_10)global.PlayerStarty[2] = global.bottomrighty$(13_10)$(13_10)global.PlayerLeft[1] = global.Player1Left$(13_10)global.PlayerRight[1] = global.Player1Right$(13_10)global.PlayerUp[1] = global.Player1Up$(13_10)global.PlayerDown[1] = global.Player1Down $(13_10)global.PlayerPlace[1] = global.Player1Place $(13_10)$(13_10)global.PlayerLeft[2] = global.Player2Left$(13_10)global.PlayerRight[2] = global.Player2Right $(13_10)global.PlayerUp[2] = global.Player2Up $(13_10)global.PlayerDown[2] = global.Player2Down $(13_10)global.PlayerPlace[2] = global.Player2Place"
randomize()

//Pickups
maxNumOfPickups = 10
PickupSpawndelay = 25
PickupsSpawnedAtaTime = 3

//Map
global.tilesize=40
global.topleftx=100
global.toplefty=100
global.bottomrightx=900
global.bottomrighty=660

//Sprites
global.Playersprite[1] = player1_spr
global.Matsprite[1] = redmat_spr
global.Playersprite[2] = player2_spr
global.Matsprite[2] = bluemat_spr

//Movement Code Do Not Edit
enum directions {
	right,
	up,
	left,
	down
}

global.components = []
global.components[directions.right] = [global.tilesize,0]
global.components[directions.up] = [0,-global.tilesize]
global.components[directions.left] = [-global.tilesize,0]
global.components[directions.down] = [0,global.tilesize]

//Default Variables Do Not Edit
maxNumOfPlayers = 2
global.PlayersOnMap = 0
global.PickupsOnMap = 0
global.ScrollsOnMap = 0

//Handled Elsewhere Do Not Edit
alarm_set(1,global.round_time*30)
alarm_set(2,(global.round_time-3)*30-15)

scrollx = (global.topleftx+global.bottomrightx)/2
scrolly = (global.toplefty+global.bottomrighty)/2

global.PlayerStartx[1] = global.topleftx
global.PlayerStarty[1] = global.toplefty

global.PlayerStartx[2] = global.bottomrightx
global.PlayerStarty[2] = global.bottomrighty

global.PlayerLeft[1] = global.Player1Left
global.PlayerRight[1] = global.Player1Right
global.PlayerUp[1] = global.Player1Up
global.PlayerDown[1] = global.Player1Down 
global.PlayerPlace[1] = global.Player1Place 

global.PlayerLeft[2] = global.Player2Left
global.PlayerRight[2] = global.Player2Right 
global.PlayerUp[2] = global.Player2Up 
global.PlayerDown[2] = global.Player2Down 
global.PlayerPlace[2] = global.Player2Place

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 1FAEB9B8
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3D5B1681
/// @DnDArgument : "soundid" "game_bgm"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "909e1487-8e93-4531-aa2c-1b79ffb24549"
audio_play_sound(game_bgm, 0, 1);
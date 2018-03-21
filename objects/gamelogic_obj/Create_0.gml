/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62E52D86
/// @DnDArgument : "code" "randomize() //fix random seed issue$(13_10)$(13_10)global.PlayersOnMap = 0$(13_10)global.PickupsOnMap = 0$(13_10)global.ScrollsOnMap = 0$(13_10)$(13_10)maxNumOfPlayers = 2$(13_10)maxNumOfPickups = 6$(13_10)ScoreCap = 5$(13_10)$(13_10)//Map$(13_10)global.tilesize=40$(13_10)global.topleftx=100$(13_10)global.toplefty=100$(13_10)global.bottomrightx=900$(13_10)global.bottomrighty=660$(13_10)$(13_10)//Do not Edit$(13_10)global.squaresx=floor((global.bottomrightx-global.topleftx)/global.tilesize)$(13_10)global.squaresy=floor((global.bottomrighty-global.toplefty)/global.tilesize)$(13_10)$(13_10)//Scroll spawn$(13_10)scrollx = 500$(13_10)scrolly = 380$(13_10)$(13_10)//Player 1 Mat$(13_10)global.PlayerStartx[1] = 100$(13_10)global.PlayerStarty[1] = 100$(13_10)global.Matsprite[1] = redmat_spr$(13_10)$(13_10)//Player 2 Mat$(13_10)global.PlayerStartx[2] = 900$(13_10)global.PlayerStarty[2] = 660$(13_10)global.Matsprite[2] = bluemat_spr$(13_10)$(13_10)//Player 1 Movement$(13_10)global.PlayerLeft[1] = 65$(13_10)global.PlayerRight[1] = 68$(13_10)global.PlayerUp[1] = 87$(13_10)global.PlayerDown[1] = 83$(13_10)global.PlayerPlace[1] = 82$(13_10)global.Playersprite[1] = player1_spr$(13_10)$(13_10)//Player 2 Movement$(13_10)global.PlayerLeft[2] = 37$(13_10)global.PlayerRight[2] = 39$(13_10)global.PlayerUp[2] = 38$(13_10)global.PlayerDown[2] = 40$(13_10)global.PlayerPlace[2] = 190$(13_10)global.Playersprite[2] = player2_spr"
randomize() //fix random seed issue

global.PlayersOnMap = 0
global.PickupsOnMap = 0
global.ScrollsOnMap = 0

maxNumOfPlayers = 2
maxNumOfPickups = 6
ScoreCap = 5

//Map
global.tilesize=40
global.topleftx=100
global.toplefty=100
global.bottomrightx=900
global.bottomrighty=660

//Do not Edit
global.squaresx=floor((global.bottomrightx-global.topleftx)/global.tilesize)
global.squaresy=floor((global.bottomrighty-global.toplefty)/global.tilesize)

//Scroll spawn
scrollx = 500
scrolly = 380

//Player 1 Mat
global.PlayerStartx[1] = 100
global.PlayerStarty[1] = 100
global.Matsprite[1] = redmat_spr

//Player 2 Mat
global.PlayerStartx[2] = 900
global.PlayerStarty[2] = 660
global.Matsprite[2] = bluemat_spr

//Player 1 Movement
global.PlayerLeft[1] = 65
global.PlayerRight[1] = 68
global.PlayerUp[1] = 87
global.PlayerDown[1] = 83
global.PlayerPlace[1] = 82
global.Playersprite[1] = player1_spr

//Player 2 Movement
global.PlayerLeft[2] = 37
global.PlayerRight[2] = 39
global.PlayerUp[2] = 38
global.PlayerDown[2] = 40
global.PlayerPlace[2] = 190
global.Playersprite[2] = player2_spr
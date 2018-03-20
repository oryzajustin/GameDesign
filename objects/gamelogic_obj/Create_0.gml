/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62E52D86
/// @DnDArgument : "code" "randomize() //fix random seed issue$(13_10)$(13_10)global.PlayersOnMap = 0$(13_10)global.PickupsOnMap = 0$(13_10)global.ScrollsOnMap = 0$(13_10)$(13_10)maxNumOfPlayers = 2$(13_10)maxNumOfPickups = 6$(13_10)ScoreCap = 5$(13_10)$(13_10)scrollx = 505$(13_10)scrolly = 425$(13_10)$(13_10)//Player 1$(13_10)global.PlayerLeft[1] = ord("A")$(13_10)global.PlayerRight[1] = ord("D")$(13_10)global.PlayerUp[1] = ord("W")$(13_10)global.PlayerDown[1] = ord("S")$(13_10)global.PlayerPlace[1] = ord("R")$(13_10)global.PlayerStartx[1] = 100$(13_10)global.PlayerStarty[1] = 100$(13_10)global.Playersprite[1] = player1_spr$(13_10)$(13_10)//Player 2$(13_10)global.PlayerLeft[2] = vk_left$(13_10)global.PlayerRight[2] = vk_right$(13_10)global.PlayerUp[2] = vk_up$(13_10)global.PlayerDown[2] = vk_down$(13_10)global.PlayerPlace[2] = 190 // >. key$(13_10)global.PlayerStartx[2] = 940$(13_10)global.PlayerStarty[2] = 660$(13_10)global.Playersprite[2] = player2_spr"
randomize() //fix random seed issue

global.PlayersOnMap = 0
global.PickupsOnMap = 0
global.ScrollsOnMap = 0

maxNumOfPlayers = 2
maxNumOfPickups = 6
ScoreCap = 5

scrollx = 505
scrolly = 425

//Player 1
global.PlayerLeft[1] = ord("A")
global.PlayerRight[1] = ord("D")
global.PlayerUp[1] = ord("W")
global.PlayerDown[1] = ord("S")
global.PlayerPlace[1] = ord("R")
global.PlayerStartx[1] = 100
global.PlayerStarty[1] = 100
global.Playersprite[1] = player1_spr

//Player 2
global.PlayerLeft[2] = vk_left
global.PlayerRight[2] = vk_right
global.PlayerUp[2] = vk_up
global.PlayerDown[2] = vk_down
global.PlayerPlace[2] = 190 // >. key
global.PlayerStartx[2] = 940
global.PlayerStarty[2] = 660
global.Playersprite[2] = player2_spr
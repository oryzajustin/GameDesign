/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5036DE2B
/// @DnDArgument : "code" "///pickrandom(argument0)$(13_10)if(argument0==y){$(13_10)	squaresy=floor((global.bottomrighty-global.toplefty)/global.tilesize)$(13_10)	return (irandom(squaresy))*global.tilesize+global.toplefty;$(13_10)}$(13_10)squaresx=floor((global.bottomrightx-global.topleftx)/global.tilesize)$(13_10)return (irandom(squaresx))*global.tilesize+global.topleftx;"
///pickrandom(argument0)
if(argument0==y){
	squaresy=floor((global.bottomrighty-global.toplefty)/global.tilesize)
	return (irandom(squaresy))*global.tilesize+global.toplefty;
}
squaresx=floor((global.bottomrightx-global.topleftx)/global.tilesize)
return (irandom(squaresx))*global.tilesize+global.topleftx;
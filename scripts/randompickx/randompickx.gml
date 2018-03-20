/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F6A6DAC
/// @DnDArgument : "code" "topleftx=100$(13_10)tilesize=40$(13_10)bottomrightx=960$(13_10)squares=floor((bottomright-topleftx)/tilesize)$(13_10)return (irandom(squares))*tilesize+topleftx;"
topleftx=100
tilesize=40
bottomrightx=960
squares=floor((bottomright-topleftx)/tilesize)
return (irandom(squares))*tilesize+topleftx;
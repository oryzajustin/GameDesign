/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5036DE2B
/// @DnDArgument : "code" "toplefty=100$(13_10)tilesize=40$(13_10)bottomrighty=660$(13_10)squares=floor((bottomright-topleftx)/tilesize)$(13_10)return (irandom(squares))*tilesize+toplefty;"
toplefty=100
tilesize=40
bottomrighty=660
squares=floor((bottomright-topleftx)/tilesize)
return (irandom(squares))*tilesize+toplefty;
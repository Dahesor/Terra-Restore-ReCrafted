#$(facing) $(sign)
setblock ~ ~ ~ air
$setblock ~ ~ ~ cherry_wall_sign[facing=$(facing)] replace
data modify block ~ ~ ~ front_text set from entity @s data.sign
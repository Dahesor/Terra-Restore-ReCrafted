data modify storage temp item set value []
data modify storage temp item append from entity @s equipment.offhand
tellraw @a {nbt:"item",storage:"temp"}
function sys:player/ui/foolproof/return_from_temp
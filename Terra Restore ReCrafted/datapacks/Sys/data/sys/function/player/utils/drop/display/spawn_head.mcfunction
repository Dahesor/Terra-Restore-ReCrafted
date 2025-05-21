loot spawn ~ ~ ~ loot sys:mech/head
data modify storage temp run set from entity @s UUID
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:custom_data":{deathHead:1b}}}},limit=1,distance=..2] run function sys:player/utils/drop/display/head_self
scoreboard players add boss_1_skeleton data 1
scoreboard players add boss_1_bow data 1
scoreboard players add boss_1_cake data 1
execute if score boss_1_bow data matches 300 run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{is_temp:1b}},id:"minecraft:bow"}}]
execute if score boss_1_skeleton data matches 500.. run function sys:core/events/boss_wither/moves/skeleton
execute if score boss_1_bow data matches 800.. run function sys:core/events/boss_wither/moves/bow
execute store result score boss_1_players data if entity @e[gamemode=adventure,tag=in_boss_wither,type=player]
kill @e[type=item,nbt={Item:{id:"minecraft:wither_rose"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}]
clear @a[tag=in_boss_wither] bow[custom_data~{is_temp:1b},damage~{durability:{max:1}}]
clear @a wither_rose
clear @a nether_star
execute if score boss_1_players data matches ..0 run return run function sys:core/events/boss_wither/results/fail
execute unless entity @e[type=wither,tag=boss_wither] run function sys:core/events/boss_wither/results/victory
tp @a[tag=in_boss_wither] 346.88 49.00 -803.44 0 0
summon wither 347.61 72.42 -784.13 {Tags:["boss_wither","resolved_mob","boss"],DeathLootTable:"empty",Invul:200,CustomName:'{"translate": "boss.wither.name","color": "red"}'}
fill 344 60 -781 350 60 -787 barrier
function #dah.sch:set {time:201,run:"fill 344 60 -781 350 60 -787 air",extra:{flags:["no_entity"]}}
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{is_temp:1b}}}}]
kill @e[type=area_effect_cloud,tag=boss_wither_cloud]
execute positioned 333 53 -784 run function sys:core/events/boss_wither/setup/cloud
execute positioned 361 53 -784 run function sys:core/events/boss_wither/setup/cloud
scoreboard players set boss_1_bow data 0
scoreboard players set boss_1_skeleton data 0
scoreboard players set boss_wither data 1
scoreboard players set boss_1_players data 0
scoreboard players set boss_1_cake data 0
execute store result score boss_1_players data if entity @a[tag=in_boss_wither]
data modify storage temp run set value {hp:300,armor:4d}
scoreboard players set #temp calculator 50
scoreboard players operation #temp calculator *= boss_1_players data
scoreboard players add #temp calculator 200
execute if score #temp calculator matches 1024.. run scoreboard players set #temp calculator 1023
execute store result storage temp run.hp int 1 run scoreboard players get #temp calculator
forceload remove 370 -662 302 -709
scoreboard players set #temp calculator 6
scoreboard players operation #temp calculator *= boss_1_players data
scoreboard players add #temp calculator 34
execute if score #temp calculator matches 1024.. run scoreboard players set #temp calculator 1023
execute store result storage temp run.armor double 0.1 run scoreboard players get #temp calculator

execute as @e[type=wither,tag=boss_wither] run function sys:core/events/boss_wither/setup/change_hp with storage temp run

execute as @a[tag=in_boss_wither] run function sys:core/events/boss_wither/setup/player_self
#更新时间
execute store result score $gametime calculator run time query gametime
execute store result storage data TimeStamp long 1 run time query gametime

#玩家互传
function sys:core/tp/tick

#事件
function sys:core/events/runner

#各玩家
scoreboard players set $player data 0
execute as @a at @s run function sys:player/tick

#玩家事件
function sys:core/player_event/update

#各循环
scoreboard players add #loop_2 calculator 1
execute if score #loop_2 calculator matches 2.. run scoreboard players set #loop_2 calculator 0
scoreboard players add #loop_5 calculator 1
execute if score #loop_5 calculator matches 5.. run scoreboard players set #loop_5 calculator 0
scoreboard players add #loop_20 calculator 1
execute if score #loop_20 calculator matches 20.. run scoreboard players set #loop_20 calculator 0

#每秒更新
execute if score #loop_20 calculator matches 13 run function sys:second

#复活
execute as @e[type=player,scores={death=1..}] run function sys:player/life/normal_revive

#各实体更新
execute as @e[type=#sys:mobs,distance=0..,tag=!fully_resolved] at @s run function sys:mob/new
execute as @e[type=#sys:need_ticking,distance=0..,tag=ticking] run function sys:mob/ticking/specialize
execute as @e[type=#sys:mobs,distance=0..,nbt={HurtTime:9s}] run function sys:mob/ticking/update_hp
execute if score #loop_5 calculator matches 3 as @e[type=#sys:need_ticking,distance=0..,tag=quater_ticking] at @s run function sys:mob/ticking/quater

#杂项
execute if score #loop_5 calculator matches 3 if loaded 2793 151 -1003 run particle enchant 2973 151.5 -1003 0 0 0 5 750 normal @a
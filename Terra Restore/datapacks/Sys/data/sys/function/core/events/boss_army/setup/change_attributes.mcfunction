scoreboard players set #temp calculator 20
scoreboard players operation #temp calculator *= boss_army_players data
scoreboard players add #temp calculator 70
data modify storage temp run set value {hp:90}
execute store result storage temp run.hp int 1 run scoreboard players get #temp calculator
function sys:core/events/boss_army/setup/change_hp with storage temp run

scoreboard players set #temp calculator 40
scoreboard players operation #temp calculator *= boss_army_players data
scoreboard players add #temp calculator 60
data modify storage temp run set value {hp:100}
execute store result storage temp run.hp int 1 run scoreboard players get #temp calculator
execute on passengers run function sys:core/events/boss_army/setup/change_hp with storage temp run

execute if score boss_army_diff data matches 3 run attribute @s generic.movement_speed modifier add sys:boss_army_diff 0.1 add_multiplied_base
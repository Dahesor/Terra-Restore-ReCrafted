execute if entity @s[tag=resolved_mob] run return run function sys:mob/misc/equip_detector


tag @s add resolved_mob
execute if entity @s[tag=with_temp_helmet] run return run function sys:mob/loot/8plus/air_helmet
attribute @s knockback_resistance modifier add sys:mob_base 0.5 add_value
execute store result score #region calculator run function sys:player/get_region
scoreboard players operation @s dropTemp = #region calculator
execute if score @s dropTemp matches 200 run scoreboard players set @s dropTemp 8
execute if score @s dropTemp matches 1000 run scoreboard players set @s dropTemp 7
execute if score #region calculator matches 100 run return run function sys:core/despawn
execute if entity @s[tag=changed_pos] run function sys:mob/misc/set_pos
execute if entity @s[tag=tp_2] at @s run tp ~ ~3 ~
execute if score #region calculator matches 11 run function sys:mob/army/initialize
function sys:mob/loot/analyze
function sys:mob/factors/parse
function sys:mob/misc/equip_detector
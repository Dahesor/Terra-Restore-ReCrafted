scoreboard players add #UID UID 1
scoreboard players operation @s UID = #UID UID
data modify storage sys:data player append value {UID:-1,pack:[],name:"",UUID:""}
function sys:player/uid/processes/get_name
execute store result storage sys:data player[-1].UID int 1 run scoreboard players get #UID UID
function gu:generate
data modify storage sys:data player[-1].UUID set from storage gu:main out
scoreboard players set @s tp 0
execute positioned 0 9 0 run function sys:player/life/set_spawn
execute if score game_start data matches 1.. positioned 100 63 100 run function sys:player/life/set_spawn
execute if score game_start data matches 1.. run tp @s 100 63 100
team join player @s
attribute @s generic.attack_speed base set 2
scoreboard players set @s skill.right 1
scoreboard players set @s skill.off 1

scoreboard players set @s STR 100
scoreboard players set @s CON 100
scoreboard players set @s DEX 100
scoreboard players set @s INT 100
scoreboard players set @s POW 100
scoreboard players set @s EDU 100
execute store result score @s region run function sys:player/get_region
tag @s add region_name
scoreboard players set @s region_name 3
scoreboard players set @s music -5
scoreboard players set @s leave_game 0
tag @s remove reading_container
attribute @s gravity base set 0.08
execute if entity @s[tag=tpee] run function dah.sch:set {time:10,run:"function sys:player/utils/tp/reciver/leave_game"}
execute if entity @s[tag=tper] run function sys:player/utils/tp/sender/package/interruptted

execute if entity @s[tag=in_boss] run function sys:player/life/domains/respawn
function sys:skills/left_reset
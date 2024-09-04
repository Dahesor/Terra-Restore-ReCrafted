particle shriek{delay:0} ~ ~ ~ 0 1 0 0.01 8 force @a
scoreboard players operation #temp calculator = @s UID
tag @s add tp_temp
execute as @e[type=marker,tag=tp_sender] if score @s tp_cd = #temp calculator at @s run function sys:player/utils/tp/sender/teleport/sender_marker
tag @s remove tp_temp
scoreboard players set @s tp 0
tag @s remove tper
execute at @s run playsound block.portal.travel master @s ~ ~ ~ 1 1.3 1
execute at @s run function #dah.sch:set {time:2,run:"function sys:player/utils/tp/sender/teleport/portal_particles",extra:{flags:["no_entity"]}}
execute store result score @s region run function sys:player/get_region
tag @s add region_name
scoreboard players set @s region_name 1
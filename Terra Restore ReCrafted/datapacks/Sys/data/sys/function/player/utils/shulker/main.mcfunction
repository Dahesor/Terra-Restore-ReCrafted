execute if items entity @s[tag=!__shulker] player.crafting.2 #shulker_boxes run function sys:player/utils/shulker/init/start

execute if entity @s[tag=__shulker] run function sys:player/utils/shulker/monitor/update
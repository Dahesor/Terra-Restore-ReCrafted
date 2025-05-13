execute unless items entity @s player.crafting.2 #shulker_boxes run return run function sys:player/utils/shulker/close/left

item replace entity 0-0-0-0-0 container.2 from entity @s player.crafting.2
execute store result score #temp calculator run data get entity 0-0-0-0-0 Items[{Slot:2b}].components."minecraft:custom_data".TimeStamp
data remove entity 0-0-0-0-0 Items
scoreboard players add #temp calculator 1
execute if score #temp calculator < $gametime calculator run return run function sys:player/utils/shulker/close/swap

item modify entity @s player.crafting.2 sys:util/stamp_time
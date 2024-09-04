scoreboard players set @s ui.drop_head 0
kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{ui:{}}}}}]
data modify storage temp item set value []
data modify storage temp Owner set from entity @s UUID
execute if items entity @s inventory.0 *[!custom_data~{ui:{}}] run data modify storage temp item append from entity @s Inventory[{Slot:9b}]
execute if items entity @s inventory.0 *[!custom_data~{ui:{}}] at @s run function sys:player/ui/foolproof/return_from_temp
execute if entity @s[tag=reading_container] run loot replace entity @s inventory.0 loot sys:ui/head_locked
execute unless entity @s[tag=reading_container] run loot replace entity @s inventory.0 loot sys:ui/head
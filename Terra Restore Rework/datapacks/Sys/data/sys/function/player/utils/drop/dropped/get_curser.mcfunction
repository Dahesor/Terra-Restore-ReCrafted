data modify storage sys:data Inv2 set value []
execute if items entity @s player.cursor * run item replace entity 0-0-0-0-0 container.0 from entity @s player.cursor
execute if items entity @s player.crafting.0 * run item replace entity 0-0-0-0-0 container.1 from entity @s player.crafting.0
execute if items entity @s player.crafting.1 * run item replace entity 0-0-0-0-0 container.2 from entity @s player.crafting.1
execute if items entity @s player.crafting.2 * run item replace entity 0-0-0-0-0 container.3 from entity @s player.crafting.2
execute if items entity @s player.crafting.3 * run item replace entity 0-0-0-0-0 container.4 from entity @s player.crafting.3

item replace entity @s player.cursor with air
item replace entity @s player.crafting.0 with air
item replace entity @s player.crafting.1 with air
item replace entity @s player.crafting.2 with air
item replace entity @s player.crafting.3 with air

data modify storage sys:data Inv2 set from entity 0-0-0-0-0 Items
data modify entity 0-0-0-0-0 Items set value []

execute unless data storage sys:data Inv2[0] run return fail
data modify storage sys:data Inv2[].Slot set value 60b
data modify storage sys:data Inv append from storage sys:data Inv2[]
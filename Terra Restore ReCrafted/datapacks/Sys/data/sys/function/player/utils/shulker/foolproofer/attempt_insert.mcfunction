execute store result score #_ic2 calculator run data get storage data Inv[0].Slot
execute unless score #_ic2 calculator matches 9..35 run return fail

execute unless function sys:player/utils/shulker/foolproofer/find_empty run return run function sys:player/utils/shulker/foolproofer/drop_item

data modify storage data Inv[0].Slot set value 1b
data remove entity 0-0-0-0-0 Items[{Slot:1b}]
data modify entity 0-0-0-0-0 Items append from storage data Inv[0]

execute unless items entity @s hotbar.0 * run return run item replace entity @s hotbar.0 from entity 0-0-0-0-0 container.1
execute unless items entity @s hotbar.1 * run return run item replace entity @s hotbar.1 from entity 0-0-0-0-0 container.1
execute unless items entity @s hotbar.2 * run return run item replace entity @s hotbar.2 from entity 0-0-0-0-0 container.1
execute unless items entity @s hotbar.3 * run return run item replace entity @s hotbar.3 from entity 0-0-0-0-0 container.1
execute unless items entity @s hotbar.4 * run return run item replace entity @s hotbar.4 from entity 0-0-0-0-0 container.1
execute unless items entity @s hotbar.5 * run return run item replace entity @s hotbar.5 from entity 0-0-0-0-0 container.1
execute unless items entity @s hotbar.6 * run return run item replace entity @s hotbar.6 from entity 0-0-0-0-0 container.1
execute unless items entity @s hotbar.7 * run return run item replace entity @s hotbar.7 from entity 0-0-0-0-0 container.1
execute unless items entity @s hotbar.8 * run return run item replace entity @s hotbar.8 from entity 0-0-0-0-0 container.1
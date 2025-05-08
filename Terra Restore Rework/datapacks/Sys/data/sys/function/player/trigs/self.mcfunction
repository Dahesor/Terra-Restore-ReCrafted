execute if score @s right_trigger matches 1.. run function sys:player/trigs/skills/get_right
execute if items entity @s weapon #sys:offhand_trigger[custom_data~{trigger:1b}] unless items entity @s weapon.offhand #sys:offhand_trigger[custom_data~{trigger:1b}] run function sys:player/trigs/skills/get_off

execute unless items entity @s weapon.offhand #sys:offhand_trigger[custom_data~{trigger:1b}] run function sys:player/trigs/fool/put_on
execute if score @s off.drop matches 1.. run function sys:player/trigs/fool/dropped
execute if score @s off.drop_shield matches 1.. run function sys:player/trigs/fool/dropped

execute if score #loop_2 calculator matches 0 run function sys:player/trigs/cd/update

execute if score @s right.pause matches 1.. run scoreboard players remove @s right.pause 1
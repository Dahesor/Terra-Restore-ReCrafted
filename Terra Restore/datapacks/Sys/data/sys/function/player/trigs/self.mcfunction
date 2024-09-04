execute if score @s right_trigger matches 1.. run function sys:player/trigs/skills/get_right
execute if items entity @s weapon carrot_on_a_stick[custom_data~{trigger:1b}] unless items entity @s weapon.offhand carrot_on_a_stick[custom_data~{trigger:1b}] run function sys:player/trigs/skills/get_off
execute unless items entity @s weapon.offhand carrot_on_a_stick[custom_data~{trigger:1b}] run function sys:player/trigs/fool/put_on
execute if score @s off.drop matches 1.. run function sys:player/trigs/fool/dropped

execute if score @s CD.off matches 1.. run scoreboard players remove @s CD.off 1
execute if score @s CD.right matches 1.. run scoreboard players remove @s CD.right 1

execute if score @s right.pause matches 1.. run scoreboard players remove @s right.pause 1
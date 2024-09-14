tag @s remove reading_container
scoreboard players reset @s zcache_rot_x
scoreboard players reset @s zcache_rot_y
execute unless entity @s[tag=riding_container] run loot replace entity @s inventory.0 loot sys:ui/head
function sys:player/trigs/fool/put_on
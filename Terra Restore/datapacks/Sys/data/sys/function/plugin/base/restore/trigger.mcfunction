advancement revoke @s only sys:place_terra
execute unless entity @e[type=interaction,distance=..10,tag=terra] run return fail
tag @s add interation_temp
execute as @e[type=interaction,distance=..10,tag=terra] run function sys:plugin/base/restore/check_target
tag @s remove interation_temp
execute if score #temp calculator matches 1 run return run function sys:plugin/base/restore/check_hand {id:1}
execute if score #temp calculator matches 2 run return run function sys:plugin/base/restore/check_hand {id:2}
execute if score #temp calculator matches 3 run return run function sys:plugin/base/restore/check_hand {id:3}
execute if score #temp calculator matches 4 run return run function sys:plugin/base/restore/check_hand {id:4}
execute if score #temp calculator matches 5 run return run function sys:plugin/base/restore/check_hand {id:5}
execute if score #temp calculator matches 6 run return run function sys:plugin/base/restore/check_hand {id:6}
execute if score #temp calculator matches 7 run return run function sys:plugin/base/restore/check_hand {id:7}
execute if score #temp calculator matches 8 run return run function sys:plugin/base/restore/check_hand {id:8}
execute if score #temp calculator matches 9 run return run function sys:plugin/base/restore/check_hand {id:9}
execute if score #temp calculator matches 10 run return run function sys:plugin/base/restore/check_hand {id:10}
execute if score #temp calculator matches 11 run return run function sys:plugin/base/restore/check_hand {id:11}
execute if score #temp calculator matches 12 run return run function sys:plugin/base/restore/check_hand {id:12}
execute if score #temp calculator matches 13 run return run function sys:plugin/base/restore/check_hand {id:13}
execute if score #temp calculator matches 14 run return run function sys:plugin/base/restore/check_hand {id:14}
execute if score #temp calculator matches 15 run return run function sys:plugin/base/restore/check_hand {id:15}
execute if score #temp calculator matches 16 run return run function sys:plugin/base/restore/check_hand {id:16}
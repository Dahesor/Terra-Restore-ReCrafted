data modify storage temp run set value {UID:0}
execute store result storage temp run.UID int 1 run scoreboard players get @s UID
execute store result score #temp calculator run function sys:core/box/player/loots/find_and_record with storage temp run
execute if score #temp calculator matches 0 run return fail
return 1
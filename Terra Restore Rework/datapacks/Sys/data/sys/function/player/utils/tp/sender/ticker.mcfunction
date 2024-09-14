scoreboard players remove @s tp_cd 1
particle portal ~ ~0.4 ~ 0.4 0.4 0.4 0.3 30 normal @a
execute if function sys:player/utils/get_pos_sum run return run function sys:player/utils/tp/sender/move

execute if score @s tp_cd matches 99 run playsound block.portal.trigger master @s ~ ~ ~ 1 0.8 1

execute if score @s tp_cd matches ..0 run function sys:player/utils/tp/sender/teleport/run
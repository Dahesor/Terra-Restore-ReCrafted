scoreboard players set #final_success calculator 0
scoreboard players set #dx calculator -2
execute positioned ~-2 ~ ~ store result score #new_success calculator run function sys:player/utils/tp/reciver/get_cut
scoreboard players operation #final_success calculator += #new_success calculator
scoreboard players set #dx calculator -1
execute positioned ~-1 ~ ~ store result score #new_success calculator run function sys:player/utils/tp/reciver/get_cut
scoreboard players operation #final_success calculator += #new_success calculator
scoreboard players set #dx calculator 0
execute positioned ~ ~ ~ store result score #new_success calculator run function sys:player/utils/tp/reciver/get_cut
scoreboard players operation #final_success calculator += #new_success calculator
scoreboard players set #dx calculator 1
execute positioned ~1 ~ ~ store result score #new_success calculator run function sys:player/utils/tp/reciver/get_cut
scoreboard players operation #final_success calculator += #new_success calculator
scoreboard players set #dx calculator 2
execute positioned ~2 ~ ~ store result score #new_success calculator run function sys:player/utils/tp/reciver/get_cut
scoreboard players operation #final_success calculator += #new_success calculator

return run scoreboard players get #final_success calculator
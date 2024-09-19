scoreboard players set @s sweep_counter 0
scoreboard players add $player data 1
execute if score @s death matches 1.. run function sys:player/life/domains/check
function sys:player/ui/self
function sys:player/trigs/self
function sys:player/attack/ticker

execute if items entity @s[tag=!stop_att] player.cursor #sys:may_att[!custom_data~{att_lock:1b}] run function sys:att/apply/new

execute if score #loop_20 calculator matches 4 run function sys:player/second
execute if score @s warped_stick matches 1.. run function sys:dev/mark_cb
execute if score @s leave_game matches 1.. run function sys:player/life/left_game

execute if score @s region matches 6 run function sys:legacy/misc/uhc_foodcheck
execute unless score @s tp matches 0 if score @s[tag=!tper] UID matches 1.. run function sys:player/utils/tp/sender/check_valid
execute if score @s tp_cd matches 1.. run function sys:player/utils/tp/sender/ticker
#DEV
execute if entity @s[nbt={SelectedItem:{id:"minecraft:structure_void"}}] positioned ~ ~1 ~ run function sys:dev/spread_find
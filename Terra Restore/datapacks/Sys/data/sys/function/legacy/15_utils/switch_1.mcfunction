execute if score 15_switch_1 data matches 1 run return fail

scoreboard players set 15_switch_1 data 1
setblock 3090 134 -693 redstone_block

tellraw @a[scores={region=15}] {"translate":"area.16.switch","color": "yellow"}
execute if score 15_switch_1 data matches 1.. if score 15_switch_2 data matches 1.. run function sys:legacy/15_utils/open_grave
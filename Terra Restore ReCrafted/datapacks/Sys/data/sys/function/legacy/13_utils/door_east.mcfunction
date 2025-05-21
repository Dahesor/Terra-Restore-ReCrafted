execute if score 13_door_east data matches 1.. run return fail

tellraw @a[distance=..40] {"translate": "event.door_open","color": "green"}
scoreboard players set 13_door_east data 1
setblock 2973 101 -1120 redstone_block
function dah.sch:set {time:2,run:"setblock 2973 101 -1120 air"}
fill 3132 120 -1131 3132 121 -1131 air
playsound block.iron_door.open master @a[distance=..40] 3132 121 -1131 1 0.4 1
clone 2960 83 -1135 2967 90 -1128 2960 107 -1135
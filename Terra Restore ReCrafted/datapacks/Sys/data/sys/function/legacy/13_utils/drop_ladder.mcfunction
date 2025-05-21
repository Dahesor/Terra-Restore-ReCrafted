execute if score 13_ladder data matches 1 run return fail

scoreboard players set 13_ladder data 1
clone 3134 81 -1203 3141 88 -1196 3134 105 -1203
tellraw @a[distance=..40] {"translate": "event.lever_dropped","color": "green"}
playsound block.ladder.step master @a[distance=..40] 096 116 -1146 1 0.8 1
setblock 3148 100 -1212 minecraft:redstone_block
function dah.sch:set {time:2,run:"setblock 3148 100 -1212 minecraft:air"}
clone 3096 98 -1146 3098 106 -1143 3096 116 -1146
fill 3097 131 -1203 3097 132 -1203 minecraft:air
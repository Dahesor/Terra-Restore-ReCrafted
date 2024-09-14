forceload add 2578 -955 2573 -954
setblock 2576 117 -954 minecraft:purple_wool
execute positioned 2576.62 116.63 -954.00 run function sys:core/box/objs/wools/purple

data modify storage sys:loot_box data[{tags:["purple_wool"]}].locked set value 0b
forceload remove 2578 -955 2573 -954
execute if score 13_door_pumkin data matches 1.. run return fail

scoreboard players set 13_door_pumkin data 1
tellraw @a[distance=..40] {"translate": "event.door_open","color": "green"}
summon minecraft:witch 3100.50 114.00 -1164.50
summon minecraft:witch 3100.50 114.00 -1164.50
fill 3062 120 -1131 3062 121 -1131 minecraft:air

tp @r[distance=..40] 3113 119 -1166
playsound block.iron_door.open master @a[distance=..40] 3062 120 -1131 1 0.4 1

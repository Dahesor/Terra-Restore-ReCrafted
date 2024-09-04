execute unless score 16_red data matches 1 run return fail
execute unless score 16_blue data matches 1 run return fail
execute unless score 16_yellow data matches 1 run return fail
execute unless score 16_green data matches 1 run return fail
fill 3106 101 959 3105 103 959 minecraft:air
tellraw @a[scores={region=17}] {"translate":"area.17.save.open","color": "yellow"}
playsound terra:event.grave master @a[scores={region=17}] 3106.12 101.93 960.30 2 0.5 1
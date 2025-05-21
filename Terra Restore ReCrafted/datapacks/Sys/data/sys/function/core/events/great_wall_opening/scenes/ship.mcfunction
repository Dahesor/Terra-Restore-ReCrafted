tp @e[type=armor_stand,tag=11_opening_spec] 2370.18 230.38 -1115.46 321.69 4.75
tp @a[scores={region=11}] 2370.18 230.38 -1115.46 321.69 4.75
tellraw @a[scores={region=11}] [{"translate":"front.head"}," ",{"translate":"front.line.7"}]
forceload remove 2612 -1019
scoreboard players set spectate great_wall 8
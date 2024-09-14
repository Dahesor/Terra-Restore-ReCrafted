tellraw @a[scores={region=11}] [{"translate":"front.head"}," ",{"translate":"front.line.3"}]
schedule function sys:core/events/great_wall_opening/scenes/5 30s
schedule function sys:core/events/great_wall_opening/scenes/4.5 9s
tp @e[type=armor_stand,tag=11_opening_spec,limit=1] 2264.77 86.86 -1141.16 -108.34 -33.94
scoreboard players set spectate great_wall 2
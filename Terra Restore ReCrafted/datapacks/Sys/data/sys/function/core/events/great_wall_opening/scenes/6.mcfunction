tellraw @a[scores={region=11}] [{"translate":"front.head"}," ",{"translate":"front.line.6"}]
function #dah.sch:set {time:400,run:'tellraw @a[scores={region=11}] [{"translate":"front.head"}," ",{"translate":"front.line.8"}]',extra:["no_entity"]}
function #dah.sch:set {time:600,run:'tellraw @a[scores={region=11}] [{"translate":"front.head"}," ",{"translate":"front.line.9"}]',extra:["no_entity"]}
function #dah.sch:set {time:800,run:'tellraw @a[scores={region=11}] [{"translate":"front.head"}," ",{"translate":"front.line.10"}]',extra:["no_entity"]}
forceload add 2612 -1019
forceload add 2370 -1115
tp @e[type=armor_stand,tag=11_opening_spec] 2612.55 171.55 -1019.92 33.78 24.36
tp @a[scores={region=11}] 2612.55 171.55 -1019.92 33.78 24.36
scoreboard players set spectate great_wall 7
schedule function sys:core/events/great_wall_opening/scenes/ship 10s
schedule function sys:core/events/great_wall_opening/scenes/potion 20s
schedule function sys:core/events/great_wall_opening/scenes/enemy_ship 30s
schedule function sys:core/events/great_wall_opening/scenes/back 41s
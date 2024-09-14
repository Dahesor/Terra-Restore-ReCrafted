tp @e[type=armor_stand,tag=11_opening_spec] 2258.71 89.48 -1125.71 133.40 23.74
scoreboard players set spectate great_wall 4
schedule function sys:core/events/great_wall_opening/scenes/stop_motion 5s
execute positioned 2248 88 -1132 run playsound terra:event.tp master @a 2248 88 -1132 3 1
execute positioned 2248 88 -1132 run playsound terra:event.tp master @a 2248 88 -1132 3 1
execute positioned 2248 88 -1132 run playsound terra:event.tp master @a 2248 88 -1132 3 1
function #dah.sch:set {time:5,run:'execute positioned 2248 88 -1132 run playsound terra:event.tp master @a 2248 88 -1132 3 1',extra:["no_entity"]}
function #dah.sch:set {time:15,run:'execute positioned 2248 88 -1132 run playsound terra:event.tp master @a 2248 88 -1132 3 1',extra:["no_entity"]}
function #dah.sch:set {time:20,run:'execute positioned 2248 88 -1132 run playsound terra:event.tp master @a 2248 88 -1132 3 1',extra:["no_entity"]}
function #dah.sch:set {time:25,run:'execute positioned 2248 88 -1132 run playsound terra:event.tp master @a 2248 88 -1132 3 1',extra:["no_entity"]}
function #dah.sch:set {time:34,run:'execute positioned 2248 88 -1132 run playsound terra:event.tp master @a 2248 88 -1132 3 1',extra:["no_entity"]}
function #dah.sch:set {time:20,run:'execute positioned 2248 -300 -1132 run tp @e[type=snow_golem,tag=gwsnow] ~ ~ ~',extra:["no_entity"]}
forceload add 2612 -1019
execute at @e[type=snow_golem,tag=gwsnow] run particle shriek{delay:1}
execute at @e[type=snow_golem,tag=gwsnow] run particle shriek{delay:5}
execute at @e[type=snow_golem,tag=gwsnow] run particle shriek{delay:10}
execute at @e[type=snow_golem,tag=gwsnow] run particle shriek{delay:15}
execute at @e[type=snow_golem,tag=gwsnow] run particle shriek{delay:20}
schedule function sys:core/events/great_wall_opening/scenes/6 16s
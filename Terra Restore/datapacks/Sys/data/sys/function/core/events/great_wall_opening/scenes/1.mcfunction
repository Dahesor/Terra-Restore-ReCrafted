execute as @a[scores={region=11}] run function sys:player/music/the_griffon_kingdom
tellraw @a[scores={region=11}] [{"translate":"front.head"}," ",{"translate":"front.line.1"}]
function #dah.sch:set {time:40,run:"execute positioned 2272.92 90.00 -1127.86 run summon minecraft:zombie ~ ~ ~ {Motion:[-1d,1d,0d]}",extra:["no_entity"]}
function #dah.sch:set {time:40,run:"execute positioned 2272.92 90.00 -1127.86 run summon minecraft:zombie ~ ~ ~ {Motion:[-1d,1d,0.1d]}",extra:["no_entity"]}
schedule function sys:core/events/great_wall_opening/scenes/2 4s
schedule function sys:core/events/great_wall_opening/scenes/3 10s
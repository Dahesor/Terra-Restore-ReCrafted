title @a[scores={region=11}] actionbar ""
tag @a[scores={region=11}] add in_boss
execute unless entity @a[scores={region=11}] run return run function sys:core/events/great_wall_opening/errors/no_player
kill @e[type=armor_stand,tag=11_opening_spec]
summon armor_stand 2231.02 95.87 -1127.60 {Rotation:[-106f,35f],Tags:["11_opening_spec"],Invisible:1b,Silent:1b,Small:1b,NoBasePlate:1b}
schedule function sys:core/events/great_wall_opening/scenes/1 2s
scoreboard players set spectate great_wall 1





#/summon Cow 2244 88 -1129 {ActiveEffects:[{Id:1,Duration:999999,Amplifier:15}],CustomNameVisible:1,CustomName:"Pest"}
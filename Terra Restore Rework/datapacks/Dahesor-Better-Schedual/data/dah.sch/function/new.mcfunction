execute if entity @s[type=player] if data storage dah.sch:new new{offline:"pause"} unless data storage dah.sch:new new{flags:["no_executer"]} run return run function dah.sch:z_private/parse/player/pause
execute if entity @s[type=player] if data storage dah.sch:new new{offline:"delay"} unless data storage dah.sch:new new{flags:["no_executer"]} run return run function dah.sch:z_private/parse/player/delay

execute store result score next dah.sch.ram run data get storage dah.sch:new new.time
execute store result score current dah.sch.ram run function dah.sch:get_time
scoreboard players operation current dah.sch.ram += next dah.sch.ram

data modify storage dah.sch:task this set value {on:1,run:'return 1'}
execute if entity @s run function dah.sch:z_private/parse/get_entity
data modify storage dah.sch:task this.run set from storage dah.sch:new new.run

summon marker ~ ~ ~ {Tags:["dah.sch.marker"]}
execute as @e[type=marker,distance=..3,tag=dah.sch.marker] run tp @s ~ ~ ~ ~ ~
data modify storage dah.sch:task this.position set from entity @e[type=marker,distance=..3,tag=dah.sch.marker,limit=1] Pos
data modify storage dah.sch:task this.rotation set from entity @e[type=marker,distance=..3,tag=dah.sch.marker,limit=1] Rotation
data modify storage dah.sch:task this.pos_x set from storage dah.sch:task this.position[0]
data modify storage dah.sch:task this.pos_y set from storage dah.sch:task this.position[1]
data modify storage dah.sch:task this.pos_z set from storage dah.sch:task this.position[2]
data modify storage dah.sch:task this.rot_x set from storage dah.sch:task this.rotation[0]
data modify storage dah.sch:task this.rot_y set from storage dah.sch:task this.rotation[1]
kill @e[type=marker,distance=..3,tag=dah.sch.marker]


execute if data storage dah.sch:new new.in run data modify storage dah.sch:task this.in set from storage dah.sch:new new.in
execute if data storage dah.sch:new new.flags run function dah.sch:z_private/parse/flags_handler

execute store result storage dah.sch:task this.on int 1 run scoreboard players get current dah.sch.ram
data modify storage dah.sch:task stash append from storage dah.sch:task this
data remove storage dah.sch:task this

return run scoreboard players get current dah.sch.ram



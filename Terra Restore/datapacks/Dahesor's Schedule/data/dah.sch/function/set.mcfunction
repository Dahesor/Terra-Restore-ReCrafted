# $(time) $(run)

$scoreboard players set next dah.sch.ram $(time)
execute store result score current dah.sch.ram run function dah.sch:get_time
scoreboard players operation current dah.sch.ram += next dah.sch.ram

$data modify storage dah.sch:task this set value {on:1,run:'$(run)'}
execute if entity @s run function dah.sch:z_private/parse/get_entity

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


execute store result storage dah.sch:task this.on int 1 run scoreboard players get current dah.sch.ram
data modify storage dah.sch:task stash append from storage dah.sch:task this

return run scoreboard players get current dah.sch.ram
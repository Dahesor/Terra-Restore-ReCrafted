scoreboard players add @a dah.sch.player 1
execute store result score $player dah.sch.ram if entity @a
data modify storage dah.sch:task online set value []
data modify storage dah.sch:task offline set value []
function dah.sch:z_private/player/looper
data modify storage dah.sch:task player append from storage dah.sch:task online[]
data modify storage dah.sch:task player append from storage dah.sch:task offline[]
data remove storage dah.sch:task online
data remove storage dah.sch:task offline

execute if data storage dah.sch:task stash[0] run function dah.sch:z_private/save/loop
execute if data storage dah.sch:task save[0] run function dah.sch:z_private/exe/check
data remove storage dah.sch:task this
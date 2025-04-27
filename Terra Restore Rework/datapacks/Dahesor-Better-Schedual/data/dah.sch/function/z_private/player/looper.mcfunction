execute unless data storage dah.sch:task player[0] run return fail

execute store result score #UID dah.sch.ram run data get storage dah.sch:task player[0].UID
scoreboard players set $online dah.sch.ram 0
execute as @a if score @s dah.sch.UID = #UID dah.sch.ram store result score $online dah.sch.ram run function dah.sch:z_private/player/analyze

execute unless score $online dah.sch.ram matches 42 run return run function dah.sch:z_private/player/offline

scoreboard players remove $player dah.sch.ram 1
data modify storage dah.sch:task online append from storage dah.sch:task player[0]
data remove storage dah.sch:task player[0]
execute unless score $player dah.sch.ram matches ..0 run function dah.sch:z_private/player/looper
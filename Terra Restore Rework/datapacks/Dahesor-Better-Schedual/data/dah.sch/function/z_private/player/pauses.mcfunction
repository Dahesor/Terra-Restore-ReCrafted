execute unless data storage dah.sch:task player[0].pause[0] run return fail
scoreboard players operation current dah.sch.ram = @s dah.sch.player
execute store result score temp dah.sch.ram run data get storage dah.sch:task player[0].pause[0].on

execute if score temp dah.sch.ram <= current dah.sch.ram run function dah.sch:z_private/player/exe/exe_pause
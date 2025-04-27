execute unless data storage dah.sch:task save[0].on run return fail

execute store result score current dah.sch.ram run function dah.sch:get_time
execute store result score temp dah.sch.ram run data get storage dah.sch:task save[0].on
execute if score temp dah.sch.ram <= current dah.sch.ram run function dah.sch:z_private/exe/exe
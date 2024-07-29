execute unless data storage dah.sch:task save[0].on run return run function dah.sch:z_private/save/here
execute store result score compare dah.sch.ram run data get storage dah.sch:task save[0].on
execute if score compare dah.sch.ram <= temp dah.sch.ram run return run function dah.sch:z_private/save/flip
function dah.sch:z_private/save/here
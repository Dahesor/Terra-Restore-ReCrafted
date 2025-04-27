data modify storage dah.sch:task save prepend from storage dah.sch:task stash[0]
data modify storage dah.sch:task save prepend from storage dah.sch:task run[]
data remove storage dah.sch:task run

execute if data storage dah.sch:task stash[0].debug run function dah.sch:z_private/debug/saved
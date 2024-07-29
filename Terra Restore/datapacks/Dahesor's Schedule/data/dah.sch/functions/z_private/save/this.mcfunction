#execute unless data storage dah.sch:task save[0] run return run data modify storage dah.sch:task save append from storage dah.sch:task stash[0]
execute store result score temp dah.sch.ram run data get storage dah.sch:task stash[0].on
data modify storage dah.sch:task run set value []
function dah.sch:z_private/save/compare
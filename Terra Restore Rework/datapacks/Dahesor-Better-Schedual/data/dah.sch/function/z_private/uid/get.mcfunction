data modify storage dah.sch:task temp set value {UID:-1}
execute store result storage dah.sch:task temp.UID int 1 run scoreboard players get @s dah.sch.UID
function dah.sch:z_private/uid/_reorder_ with storage dah.sch:task temp
data remove storage dah.sch:task temp
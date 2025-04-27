scoreboard players add #UID dah.sch.UID 1
scoreboard players operation @s dah.sch.UID = #UID dah.sch.UID
data modify storage dah.sch:task player append value {UID:-1,task:[],uuid:"0-0-0-0-0"}
execute store result storage dah.sch:task player[-1].UID int 1 run scoreboard players get #UID dah.sch.UID
function gu:generate
data modify storage dah.sch:task player[-1].uuid set from storage gu:main out
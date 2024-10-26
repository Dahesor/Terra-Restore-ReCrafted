execute store result score #temp calculator run data get storage sys:mod result[{id:"sweeping_damage_ratio"}].amount 100
data modify storage temp run set value {value:0,trans:"sys.name.sweeping_damage_ratio"}
execute store result storage temp run.value int 1 run scoreboard players get #temp calculator
function sys:att/apply/lore/extras/percent with storage temp run
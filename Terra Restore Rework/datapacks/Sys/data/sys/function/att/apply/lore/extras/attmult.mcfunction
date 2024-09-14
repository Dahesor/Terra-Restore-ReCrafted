execute store result score #temp calculator run data get storage sys:mod result[{id:"generic.attack_damage",operation:"add_multiplied_base"}].amount 100

data modify storage temp run set value {value:0}
execute store result storage temp run.value int 1 run scoreboard players get #temp calculator

function sys:att/apply/lore/extras/attmult_apply with storage temp run
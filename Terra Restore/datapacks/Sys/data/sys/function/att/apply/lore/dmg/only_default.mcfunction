data modify storage temp run set value {trans:"attribute.name.generic.attack_damage",value:0,mc:0}
execute store result storage temp run.value int 0.1 run scoreboard players get #temp calculator
scoreboard players operation #temp calculator %= #10 calculator
execute store result storage temp run.mc int 1 run scoreboard players get #temp calculator
function sys:att/apply/lore/solo with storage temp run
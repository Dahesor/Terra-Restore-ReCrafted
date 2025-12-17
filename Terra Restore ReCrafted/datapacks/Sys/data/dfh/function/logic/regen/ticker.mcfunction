execute if entity @s[tag=dfh.__food_case] run function dfh:logic/regen/cases

execute unless score @s dfh.food_timer matches ..0 run scoreboard players remove @s dfh.food_timer 10
execute if entity @s[tag=dfh.hunger.saturated] run scoreboard players remove @s dfh.food_timer 70
execute unless score @s dfh.food_timer matches ..0 run return fail

scoreboard players operation @s dfh.food_timer += @s dfh.Regen
function dfh:logic/regen/cases

execute if entity @s[tag=dfh.hunger.hungry] run return fail
execute unless score @s dfh.HP < @s dfh.MAX_HP run return fail
execute if score @s region matches 6 run return fail

scoreboard players add @s dfh.HP 100
execute if score @s dfh.HP > @s dfh.MAX_HP run scoreboard players operation @s dfh.HP = @s dfh.MAX_HP

function dfh:logic/regen/apply_exhution
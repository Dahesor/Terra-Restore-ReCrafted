data modify storage dah.below:m t set value {number:0}

execute store result score $hp dah.Bcalc run data get entity @s AbsorptionAmount 10
execute store result score @s dah.Bcalc run data get entity @s Health 10
scoreboard players operation $hp dah.Bcalc += @s dah.Bcalc
execute store result storage dah.below:m t.number int 0.1 run scoreboard players get $hp dah.Bcalc
execute if data storage dah.below:m t{number:0} run data modify storage dah.below:m t.number set value 1
data modify storage dah.below:m t.format set value '{"text":"c","font":"dah.below:icon"}'
execute if predicate dah.below:dying run data modify storage dah.below:m t.format set value '{"text":"C]]]","font":"dah.below:icon"}'

scoreboard players set @s dah.Bcalc 0
execute store result score @s dah.Bcalc run data get entity @s TicksFrozen
execute if score @s dah.Bcalc matches 60.. run data modify storage dah.below:m t.format set value '{"text":"g","font":"dah.below:icon"}'
execute if score @s dah.Bcalc matches 60.. if predicate dah.below:dying run data modify storage dah.below:m t.format set value '{"text":"G]]]","font":"dah.below:icon"}'


execute if predicate dah.below:poison run data modify storage dah.below:m t.format set value '{"text":"e","font":"dah.below:icon"}'
execute if predicate dah.below:poison_dying run data modify storage dah.below:m t.format set value '{"text":"E]]]","font":"dah.below:icon"}'
execute if predicate dah.below:wither run data modify storage dah.below:m t.format set value '{"text":"f","font":"dah.below:icon"}'
execute if predicate dah.below:wither_dying run data modify storage dah.below:m t.format set value '{"text":"F]]]","font":"dah.below:icon"}'

scoreboard players set @s dah.Bcalc 0
execute store result score @s dah.Bcalc run data get entity @s AbsorptionAmount
execute if score @s dah.Bcalc matches 1.. run data modify storage dah.below:m t.format set value '{"text":"d","font":"dah.below:icon"}'
execute if score @s dah.Bcalc matches 1.. if predicate dah.below:dying run data modify storage dah.below:m t.format set value '{"text":"D]]]","font":"dah.below:icon"}'

data merge storage dah.below:m {t:{ef:''}}
data modify storage dah.below:m t.ram set from entity @s active_effects
function dah.below:effects
execute unless data storage dah.below:m {t:{ef:''}} run function dah.below:below_name/prepend with storage dah.below:m t


data merge storage dah.below:m {t:{loc:'""'}}
function dah.below:below_name/get_loc

function dah.below:below_name/macro with storage dah.below:m t
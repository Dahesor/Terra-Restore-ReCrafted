execute store result score #temp calculator run data get entity @s Health 100
execute if score $original_damage dmg matches 80.. run scoreboard players add #temp calculator 80
execute if score $original_damage dmg matches ..79 run scoreboard players operation #temp calculator += $original_damage dmg
execute store result entity @s Health float 0.01 run scoreboard players get #temp calculator
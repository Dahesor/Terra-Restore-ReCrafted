scoreboard players set boss_army_speed data 0
scoreboard players add boss_army_stack data 1
execute as @a[tag=in_boss_army] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1.2 1
execute if score boss_army_stack data matches 3 run effect give @s speed infinite 3 true
execute if score boss_army_stack data matches 4 run effect give @s speed infinite 4 true
execute if score boss_army_stack data matches 5 run effect give @s speed infinite 5 true
execute if score boss_army_stack data matches 5 run attribute @s generic.attack_damage base set 22
execute if score boss_army_stack data matches 5 run tellraw @a[tag=in_boss_army] ["[",{"translate":"boss.army.name","color":"red"},"] ",{"translate":"boss.army.line.5"}]
execute if score boss_army_stack data matches 5 run scoreboard players set boss_army_start data 3
execute if score boss_army_stack data matches 5 as @a[tag=in_boss_army] at @s run playsound entity.ender_dragon.ambient master @s ~ ~ ~ 1 1 1

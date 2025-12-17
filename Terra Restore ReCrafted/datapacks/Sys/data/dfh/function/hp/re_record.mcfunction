scoreboard players operation #hp dfh.calculator = @s dfh.HP
scoreboard players operation #hp dfh.calculator *= #2 dfh.calculator
execute unless score @s dfh.hp_cache = @s dfh.HP run function dfh:hp/changed
scoreboard players operation @s dfh.hp_cache = @s dfh.HP
execute if score @s dfh.update matches 1.. run function dfh:hp/high_tick

scoreboard players operation #hp dfh.calculator = @s dfh.HP
scoreboard players operation #hp dfh.calculator *= #5 dfh.calculator

execute if score #hp dfh.calculator <= @s dfh.MAX_HP run function dfh:hp/wiggle_only



#Absorb
execute unless score @s dfh.absorb_cache = @s dfh.Absorb run function dfh:hp/absorb
scoreboard players operation @s dfh.absorb_cache = %this dfh.Absorb

execute if score @s[tag=!dfh.hud.absorb] dfh.Absorb matches 1.. run return run function dfh:stats/armor
execute if score @s[tag=dfh.hud.absorb] dfh.Absorb matches ..0 run return run function dfh:stats/armor
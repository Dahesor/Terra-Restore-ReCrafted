tag @s add HP.overhalf
execute store result score @s HP.dry run data get entity @s Health 100
scoreboard players operation #hp calculator = @s HP.dry
scoreboard players operation #hp calculator *= #2 calculator
execute if score #hp calculator < @s max_hp_cache run tag @s remove HP.overhalf
execute unless score @s hp_cache = @s HP.dry run function sys:player/bar/hp/changed
scoreboard players operation @s hp_cache = @s HP.dry
execute if score @s highHpTick matches 1.. run function sys:player/bar/hp/high_tick

#function sys:player/bar/hp/wiggle_only

scoreboard players operation #hp calculator = @s HP.dry
scoreboard players operation #hp calculator *= #5 calculator
execute if score #hp calculator <= @s max_hp_cache run function sys:player/bar/hp/wiggle_only



#伤害吸收
execute store result score %this HP.absorb run data get entity @s AbsorptionAmount 100
execute unless score @s HP.absorb = %this HP.absorb run function sys:player/bar/hp/absorb
scoreboard players operation @s HP.absorb = %this HP.absorb

execute if score @s[tag=!hud.absorb] HP.absorb matches 1.. run return run function sys:player/stats/hud
execute if score @s[tag=hud.absorb] HP.absorb matches ..0 run return run function sys:player/stats/hud
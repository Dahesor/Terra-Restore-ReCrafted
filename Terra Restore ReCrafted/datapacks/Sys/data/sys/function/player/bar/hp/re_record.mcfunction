tag @s add HP.overhalf
#execute store result score @s HP.dry run data get entity @s Health 100
scoreboard players operation #hp calculator = @s HP.dry
scoreboard players operation #hp calculator *= #2 calculator
execute if score #hp calculator < @s MAX_HP run tag @s remove HP.overhalf
execute unless score @s hp_cache = @s HP.dry run function sys:player/bar/hp/changed
scoreboard players operation @s hp_cache = @s HP.dry
execute if score @s highHpTick matches 1.. run function sys:player/bar/hp/high_tick

#function sys:player/bar/hp/wiggle_only

scoreboard players operation #hp calculator = @s HP.dry
scoreboard players operation #hp calculator *= #5 calculator
execute if score #hp calculator <= @s MAX_HP run function sys:player/bar/hp/wiggle_only



#伤害吸收
scoreboard players operation %this HP.absorb = @s HP.absorb
execute unless score %this HP.absorb = @s hp_absorb_cache run function sys:player/bar/hp/absorb
scoreboard players operation @s hp_absorb_cache = @s HP.absorb

execute if score @s[tag=!hud.absorb] HP.absorb matches 1.. run return run function sys:player/stats/hud
execute if score @s[tag=hud.absorb] HP.absorb matches ..0 run return run function sys:player/stats/hud
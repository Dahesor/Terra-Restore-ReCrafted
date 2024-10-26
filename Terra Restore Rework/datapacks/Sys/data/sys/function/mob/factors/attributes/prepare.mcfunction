scoreboard players operation #temp calculator = $player data
scoreboard players remove #temp calculator 1
scoreboard players operation #temp calculator *= playerAttributeFactor options
scoreboard players operation #temp calculator += factor options



data modify storage temp run set value {amount:0.0d}
attribute @s max_health modifier add sys:factor 0.0 add_multiplied_base
attribute @s attack_damage modifier add sys:factor 0.0 add_multiplied_base
attribute @s attack_knockback modifier add sys:factor 0.0 add_multiplied_base
attribute @s knockback_resistance modifier add sys:factor 0.0 add_multiplied_base

scoreboard players operation #temp2 calculator = maxHealthFatcor options
scoreboard players operation #temp2 calculator *= $region calculator
scoreboard players add #temp2 calculator 100
scoreboard players operation #temp2 calculator *= #temp calculator
scoreboard players operation #temp2 calculator /= #100 calculator
scoreboard players remove #temp2 calculator 100
execute store result entity @s attributes[{id:"minecraft:max_health"}].modifiers[{id:"sys:factor"}].amount double 0.01 run scoreboard players get #temp2 calculator

scoreboard players operation #temp2 calculator = attackDamageFactor options
scoreboard players operation #temp2 calculator *= $region calculator
scoreboard players add #temp2 calculator 100
scoreboard players operation #temp2 calculator *= factor options
scoreboard players operation #temp2 calculator /= #100 calculator
scoreboard players remove #temp2 calculator 100
execute store result entity @s attributes[{id:"minecraft:attack_damage"}].modifiers[{id:"sys:factor"}].amount double 0.01 run scoreboard players get #temp2 calculator

scoreboard players operation #temp2 calculator = attackKonckBackFactor options
scoreboard players operation #temp2 calculator *= $region calculator
scoreboard players add #temp2 calculator 100
scoreboard players operation #temp2 calculator *= factor options
scoreboard players operation #temp2 calculator /= #100 calculator
scoreboard players remove #temp2 calculator 100
execute store result entity @s attributes[{id:"minecraft:attack_knockback"}].modifiers[{id:"sys:factor"}].amount double 0.01 run scoreboard players get #temp2 calculator

scoreboard players operation #temp2 calculator = knockBackResistanceFactor options
scoreboard players operation #temp2 calculator *= $region calculator
scoreboard players add #temp2 calculator 100
scoreboard players operation #temp2 calculator *= factor options
scoreboard players operation #temp2 calculator /= #100 calculator
scoreboard players remove #temp2 calculator 100
execute store result entity @s attributes[{id:"minecraft:knockback_resistance"}].modifiers[{id:"sys:factor"}].amount double 0.01 run scoreboard players get #temp2 calculator

execute store result entity @s Health float 1 run attribute @s max_health get
execute store result score @s hp_cache run attribute @s max_health get 100
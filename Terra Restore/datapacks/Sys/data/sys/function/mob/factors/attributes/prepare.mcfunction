scoreboard players operation #temp calculator = $player data
scoreboard players remove #temp calculator 1
scoreboard players operation #temp calculator *= playerAttributeFactor options
scoreboard players operation #temp calculator += factor options



data modify storage temp run set value {amount:0.0d}
attribute @s generic.max_health modifier add sys:factor 0.0 add_multiplied_base
attribute @s generic.attack_damage modifier add sys:factor 0.0 add_multiplied_base
attribute @s generic.attack_knockback modifier add sys:factor 0.0 add_multiplied_base
attribute @s generic.knockback_resistance modifier add sys:factor 0.0 add_multiplied_base

scoreboard players operation #temp2 calculator = maxHealthFatcor options
scoreboard players operation #temp2 calculator *= $region calculator
scoreboard players add #temp2 calculator 100
scoreboard players operation #temp2 calculator *= #temp calculator
scoreboard players operation #temp2 calculator /= #100 calculator
scoreboard players remove #temp2 calculator 100
execute store result entity @s attributes[{id:"minecraft:generic.max_health"}].modifiers[{id:"sys:factor"}].amount double 0.01 run scoreboard players get #temp2 calculator

scoreboard players operation #temp2 calculator = attackDamageFactor options
scoreboard players operation #temp2 calculator *= $region calculator
scoreboard players add #temp2 calculator 100
scoreboard players operation #temp2 calculator *= factor options
scoreboard players operation #temp2 calculator /= #100 calculator
scoreboard players remove #temp2 calculator 100
execute store result entity @s attributes[{id:"minecraft:generic.attack_damage"}].modifiers[{id:"sys:factor"}].amount double 0.01 run scoreboard players get #temp2 calculator

scoreboard players operation #temp2 calculator = attackKonckBackFactor options
scoreboard players operation #temp2 calculator *= $region calculator
scoreboard players add #temp2 calculator 100
scoreboard players operation #temp2 calculator *= factor options
scoreboard players operation #temp2 calculator /= #100 calculator
scoreboard players remove #temp2 calculator 100
execute store result entity @s attributes[{id:"minecraft:generic.attack_knockback"}].modifiers[{id:"sys:factor"}].amount double 0.01 run scoreboard players get #temp2 calculator

scoreboard players operation #temp2 calculator = knockBackResistanceFactor options
scoreboard players operation #temp2 calculator *= $region calculator
scoreboard players add #temp2 calculator 100
scoreboard players operation #temp2 calculator *= factor options
scoreboard players operation #temp2 calculator /= #100 calculator
scoreboard players remove #temp2 calculator 100
execute store result entity @s attributes[{id:"minecraft:generic.knockback_resistance"}].modifiers[{id:"sys:factor"}].amount double 0.01 run scoreboard players get #temp2 calculator

execute store result entity @s Health float 1 run attribute @s generic.max_health get
scoreboard players operation #temp calculator = $player data
scoreboard players remove #temp calculator 1
scoreboard players operation #temp calculator *= playerCountFactor options
scoreboard players operation factor options += #temp calculator
scoreboard players remove factor options 100
data modify storage sys:data dupe set from entity @s
data remove storage sys:data dupe.UUID
data remove storage sys:data dupe.Pos
execute if score factor options matches 1.. run function sys:mob/factors/count/loop
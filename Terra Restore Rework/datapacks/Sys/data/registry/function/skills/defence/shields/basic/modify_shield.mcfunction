data modify storage data item set from entity @s equipment.offhand
scoreboard players operation %final calculator = s.basic_shield.BASE const

scoreboard players operation %this calculator = @s CON
scoreboard players operation %this calculator *= s.basic_shield.CON const
scoreboard players operation %this calculator /= #100 calculator
scoreboard players operation %final calculator += %this calculator

scoreboard players operation %this calculator = @s POW
scoreboard players operation %this calculator *= s.basic_shield.POW const
scoreboard players operation %this calculator /= #100 calculator
scoreboard players operation %final calculator += %this calculator

data modify storage data item.components."minecraft:blocks_attacks" set value {block_sound:"item.shield.block",bypassed_by:"#bypasses_shield",disabled_sound:"item.shield.break",item_damage:{base:0f,threshold:0f,factor:0f},damage_reductions:[{base:0f,factor:0.0f,type:"#sys:not_explosion"},{base:0f,factor:0.0f,type:"explosion"}]}
execute store result storage data item.components."minecraft:blocks_attacks".damage_reductions[0].factor float 0.01 run scoreboard players get %final calculator
execute store result storage data item.components."minecraft:blocks_attacks".damage_reductions[1].factor float 0.0075 run scoreboard players get %final calculator
data modify storage data item.Slot set value 0b

data remove entity 0-0-0-0-0 Items[]
data modify entity 0-0-0-0-0 Items append from storage data item
item replace entity @s weapon.offhand from entity 0-0-0-0-0 container.0
data remove entity 0-0-0-0-0 Items[]
execute unless entity @s[nbt={DeathTime:0s}] run return fail

data modify storage temp target set from entity @s Pos
damage @s 5 indirect_magic by @e[limit=1,type=end_crystal,tag=11_end_crystal]
execute as @e[limit=1,type=end_crystal,tag=11_end_crystal,sort=random] run function sys:legacy/11_utils/crystal_self
scoreboard players set #temp calculator 4
scoreboard players operation #temp calculator -= 11_becon data
execute if score #temp calculator matches 1.. run tellraw @s {"translate": "event.becon_remain","color": "red","with": [{"score": {"name": "#temp","objective": "calculator"},"color": "yellow"}]}

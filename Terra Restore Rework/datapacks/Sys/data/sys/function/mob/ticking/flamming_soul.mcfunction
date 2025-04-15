tag @s add quater_ticking_permanent
execute if data entity @s {OnGround:1b} run setblock ~ ~ ~ fire keep
execute unless entity @a[distance=..30] run function sys:core/despawn
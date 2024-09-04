particle dust{color:[1f,0.2f,0.2f],scale:1} ^1 ^-0.2 ^ 0 0 0 0 2
particle dust{color:[1f,0.2f,0.2f],scale:1} ^1.8 ^1 ^ 0 0 0 0 2
particle dust{color:[1f,0.2f,0.2f],scale:1} ^0.2 ^0.3 ^ 0 0 0 0 2

execute if data entity @s {OnGround:1b} run scoreboard players add @s genericCD 1
execute if score @s genericCD matches 20.. on passengers run kill
execute if score @s genericCD matches 20.. run return run kill

execute unless data entity @s {OnGround:1b} run return fail


execute if score @s genericCD matches 2.. run return fail
playsound block.anvil.land master @a[tag=in_boss_void] ~ ~ ~ 1 0.7
execute as @a[tag=in_boss_void,gamemode=!spectator,distance=..3] run function sys:core/events/boss_void/moves/axe/damage
fill ~-1.6 24 ~-1.6 ~1.6 24 ~1.6 air replace andesite_slab
fill ~-1.6 24 ~-1.6 ~1.6 24 ~1.6 air replace cracked_stone_bricks
fill ~-1.6 24 ~-1.6 ~1.6 24 ~1.6 air replace stone_bricks

fill ~-1.6 23 ~-1.6 ~1.6 23 ~1.6 air replace andesite_slab
fill ~-1.6 23 ~-1.6 ~1.6 23 ~1.6 andesite_slab[type=double] replace cracked_stone_bricks
fill ~-1.6 23 ~-1.6 ~1.6 23 ~1.6 cracked_stone_bricks replace stone_bricks
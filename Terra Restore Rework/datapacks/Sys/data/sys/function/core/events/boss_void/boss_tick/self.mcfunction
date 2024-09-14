execute store result score #hp calculator run data get entity @s AbsorptionAmount
execute store result score #temp calculator run data get entity @s Health
scoreboard players operation #temp calculator += #hp calculator
execute unless entity @s[tag=boss_void_anger] if score #temp calculator < boss_void_anger calculator run tag @s add boss_void_anger
execute store result bossbar sys:boss_void value run scoreboard players get #temp calculator

execute store result score #temp calculator run data get entity @s Pos[1]
execute if score #temp calculator matches ..23 run tp @s 3026.16 29.36 -1811.71

execute if score @s genericCD matches -1 at @s as @a[tag=in_boss_void,gamemode=!spectator,distance=..4.5] run function sys:core/events/boss_void/moves/smash/damage

scoreboard players add @s genericCD 1
function sys:core/events/boss_void/boss_tick/advance

execute if score @s genericCD matches 50..140 run function sys:core/events/boss_void/moves/smash/exe

execute if score @s genericCD matches 350 as @a[gamemode=!spectator,tag=in_boss_void] at @s positioned ^ ^ ^6 positioned ~ ~10 ~ rotated as @s rotated ~ 0 run function sys:core/events/boss_void/moves/axe/summon

execute if score @s genericCD matches 600..700 run function sys:core/events/boss_void/moves/center_smash/exe

execute if score @s genericCD matches 800 as @a[gamemode=!spectator,tag=in_boss_void] at @s run function sys:core/events/boss_void/moves/axe/player_at

execute if score @s genericCD matches 900 run function sys:core/events/boss_void/moves/mobs/wave_1
execute if score @s genericCD matches 1100 as @a[gamemode=!spectator,tag=in_boss_void] at @s positioned ^ ^ ^6 positioned ~ ~10 ~ rotated as @s rotated ~ 0 run function sys:core/events/boss_void/moves/axe/summon

execute if score @s genericCD matches 1300 run function sys:core/events/boss_void/moves/mobs/wave_2

execute if score @s genericCD matches 1550..1640 run function sys:core/events/boss_void/moves/smash/exe_2

execute if score @s genericCD matches 1800 as @a[gamemode=!spectator,tag=in_boss_void] at @s run function sys:core/events/boss_void/moves/axe/player_at


execute if score @s genericCD matches 2000 run function sys:core/events/boss_void/moves/mobs/wave_3

execute if score @s genericCD matches 2200 as @a[gamemode=!spectator,tag=in_boss_void] at @s run function sys:core/events/boss_void/moves/axe/player_at

execute if score @s genericCD matches 2400 run function sys:core/events/boss_void/moves/utils/vuco

execute if score @s genericCD matches 2500 as @a[gamemode=!spectator,tag=in_boss_void] at @s positioned ^ ^ ^6 positioned ~ ~10 ~ rotated as @s rotated ~ 0 run function sys:core/events/boss_void/moves/axe/summon

execute if score @s genericCD matches 2600.. run scoreboard players set @s genericCD 1
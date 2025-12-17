execute as @a[gamemode=!spectator] at @s run function dfh:player/main
execute store result score $gametime dfh.calculator run time query gametime

scoreboard players add #loop_5 dfh.calculator 1
execute if score #loop_5 dfh.calculator matches 5 run scoreboard players set #loop_5 dfh.calculator 0
execute if score #loop_5 dfh.calculator matches 1 as @a run function dfh:player/gamemode_check
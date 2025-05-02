execute if score @s CD.off matches 1.. run scoreboard players remove @s CD.off 1
execute if score @s CD.right matches 1.. run scoreboard players remove @s CD.right 1
execute if score @s CD.shift matches 1.. run scoreboard players remove @s CD.shift 1

scoreboard players operation #cd1 calculator = @s maxCD.right
scoreboard players operation #cd1 calculator -= @s CD.right
scoreboard players operation #cd1 calculator *= #1000 calculator
scoreboard players operation #cd1 calculator /= @s maxCD.right
scoreboard players operation #cd1 calculator /= #10 calculator

scoreboard players operation #cd2 calculator = @s maxCD.off
scoreboard players operation #cd2 calculator -= @s CD.off
scoreboard players operation #cd2 calculator *= #1000 calculator
scoreboard players operation #cd2 calculator /= @s maxCD.off
scoreboard players operation #cd2 calculator /= #10 calculator

scoreboard players operation #cd3 calculator = @s maxCD.shift
scoreboard players operation #cd3 calculator -= @s CD.shift
scoreboard players operation #cd3 calculator *= #1000 calculator
scoreboard players operation #cd3 calculator /= @s maxCD.shift
scoreboard players operation #cd3 calculator /= #10 calculator

item modify entity @s weapon.offhand sys:util/offhand_cd
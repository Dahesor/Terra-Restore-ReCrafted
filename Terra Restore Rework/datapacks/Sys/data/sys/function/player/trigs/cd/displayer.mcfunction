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

execute if entity @s[tag=shielder] run return run function sys:player/trigs/cd/as_actionbar
item modify entity @s weapon.offhand sys:util/offhand_cd
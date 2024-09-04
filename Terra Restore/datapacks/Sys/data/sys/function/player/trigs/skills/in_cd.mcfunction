scoreboard players remove #temp calculator 1
scoreboard players operation #temp calculator /= #20 calculator
scoreboard players add #temp calculator 1
title @s actionbar {"translate": "skill.cd","color": "red","with": [{"score": {"name": "#temp","objective": "calculator"},"color": "yellow"}]}
playsound terra:ui.denied master @s ~ ~ ~ 1 1.3

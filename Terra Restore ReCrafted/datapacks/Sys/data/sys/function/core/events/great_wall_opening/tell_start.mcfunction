scoreboard players set #temp calculator 1820
scoreboard players operation #temp calculator -= time great_wall
scoreboard players operation #temp calculator /= #20 calculator
#title @a[scores={region=11}] times 0 20 0
#title @a[scores={region=11}] actionbar {"translate": "event.front.countdown","color": "red","with": [{"score": {"name": "#temp","objective": "calculator"},"color": "green"},{"translate": "event.front.name","color": "yellow"}]}
function sys:player/trigs/fool/put_on
scoreboard players reset @s off.drop
scoreboard players reset @s off.drop_shield
kill @e[type=item,distance=..10,nbt={Item:{components:{"minecraft:custom_data":{trigger:1b}}}}]

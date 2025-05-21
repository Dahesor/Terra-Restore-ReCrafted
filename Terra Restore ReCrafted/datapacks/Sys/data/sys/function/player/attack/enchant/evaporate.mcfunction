execute unless entity @s[type=#sys:mobs] run return fail
data modify entity @s Fire set value 0s
playsound block.fire.extinguish player @a
particle cloud ~ ~0.2 ~ 0.1 0.3 0.1 0.001 10 normal @a
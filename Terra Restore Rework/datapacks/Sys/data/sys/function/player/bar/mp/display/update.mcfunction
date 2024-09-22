scoreboard players operation #temp calculator = @s MP
scoreboard players operation #temp calculator *= #30 calculator
scoreboard players remove #temp calculator 1
scoreboard players operation #temp calculator /= @s MAX_MP
scoreboard players add #temp calculator 1
scoreboard players operation #temp2 calculator = #temp calculator
function sys:player/bar/mp/display/exhust
function sys:player/bar/mp/display/get_number_space
execute if score @s MP >= @s MAX_MP run return run title @s actionbar [[{"score": {"name": "@s","objective": "MP"},"font": "mp","color": "dark_gray"},"/",{"score": {"name": "@s","objective": "MAX_MP"}}],"  ",{"nbt":"bar","storage": "temp","color": "white"},"  ",{"nbt":"space","storage": "temp","font": "mp"}]
execute if score #temp2 calculator matches ..6 run return run title @s actionbar [[{"score": {"name": "@s","objective": "MP"},"font": "mp","color": "red"},"/",{"score": {"name": "@s","objective": "MAX_MP"}}],"  ",{"nbt":"bar","storage": "temp","color": "white"},"  ",{"nbt":"space","storage": "temp","font": "mp"}]
title @s actionbar [[{"score": {"name": "@s","objective": "MP"},"font": "mp"},"/",{"score": {"name": "@s","objective": "MAX_MP"}}],"  ",{"nbt":"bar","storage": "temp"},"  ",{"nbt":"space","storage": "temp","font": "mp"}]
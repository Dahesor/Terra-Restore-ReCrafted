execute if data block ~ ~-1 ~ {pool:"minecraft:del"} run return run function sys:core/box/manage/destruction
execute if data block ~ ~-1 ~ {pool:"minecraft:reload"} run return run function sys:core/box/load/display_item
execute unless entity @e[type=item,distance=..3,tag=box_item] run function sys:core/box/load/display_item
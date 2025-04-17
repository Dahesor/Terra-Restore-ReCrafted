function sys:player/ui/pages/template
function sys:player/ui/pages/crafting_grids
loot replace entity @s inventory.9 loot sys:ui/background_dark
loot replace entity @s inventory.18 loot sys:ui/background_dark

loot replace entity @s inventory.0 loot sys:ui/back

scoreboard players operation %diff calculator = @s STR
scoreboard players operation %diff calculator -= @s base_STR
execute if score %diff calculator matches ..-1 run scoreboard players operation %diff calculator *= #-1 calculator
loot replace entity @s inventory.11 loot sys:ui/attributes/str

scoreboard players operation %diff calculator = @s CON
scoreboard players operation %diff calculator -= @s base_CON
execute if score %diff calculator matches ..-1 run scoreboard players operation %diff calculator *= #-1 calculator
loot replace entity @s inventory.12 loot sys:ui/attributes/consi

scoreboard players operation %diff calculator = @s DEX
scoreboard players operation %diff calculator -= @s base_DEX
execute if score %diff calculator matches ..-1 run scoreboard players operation %diff calculator *= #-1 calculator
loot replace entity @s inventory.13 loot sys:ui/attributes/dex

scoreboard players operation %diff calculator = @s INT
scoreboard players operation %diff calculator -= @s base_INT
execute if score %diff calculator matches ..-1 run scoreboard players operation %diff calculator *= #-1 calculator
loot replace entity @s inventory.14 loot sys:ui/attributes/int

scoreboard players operation %diff calculator = @s POW
scoreboard players operation %diff calculator -= @s base_POW
execute if score %diff calculator matches ..-1 run scoreboard players operation %diff calculator *= #-1 calculator
loot replace entity @s inventory.15 loot sys:ui/attributes/pow

scoreboard players operation %diff calculator = @s EDU
scoreboard players operation %diff calculator -= @s base_EDU
execute if score %diff calculator matches ..-1 run scoreboard players operation %diff calculator *= #-1 calculator
loot replace entity @s inventory.16 loot sys:ui/attributes/edu
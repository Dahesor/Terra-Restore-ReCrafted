function sys:player/ui/pages/template
function sys:player/ui/pages/crafting_grids
loot replace entity @s inventory.0 loot sys:ui/background_dark_long
loot replace entity @s inventory.18 loot sys:ui/background_dark_long

loot replace entity @s inventory.9 loot sys:ui/back_long



scoreboard players set @s sub_ui 0
function sys:player/ui/actions/change_skill/render/enter

loot replace entity @s inventory.26 loot sys:ui/skill/unequip
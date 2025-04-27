function sys:player/ui/pages/template
function sys:player/ui/pages/crafting_grids
loot replace entity @s inventory.9 loot sys:ui/background_dark_long
loot replace entity @s inventory.18 loot sys:ui/background_dark_long

loot replace entity @s inventory.0 loot sys:ui/back_long_back

loot replace entity @s inventory.2 loot sys:ui/skill/right_skill
loot replace entity @s inventory.4 loot sys:ui/skill/off_skill
loot replace entity @s inventory.6 loot sys:ui/skill/shift_skill

loot replace entity @s inventory.11 loot sys:ui/skill/empty_slot
loot replace entity @s inventory.13 loot sys:ui/skill/empty_slot
loot replace entity @s inventory.15 loot sys:ui/skill/empty_slot

function sys:player/uid/get

data modify storage data skill set value []
data modify storage data item set value {id:"barrier"}
data modify storage data skill prepend from storage sys:data player[0].ability.right
execute if data storage data skill[0].id run function sys:player/ui/actions/skill/render/not_empty
execute if data storage data skill[0].id run item replace entity @s inventory.11 from entity 0-0-0-0-0 container.0

data modify storage data skill set value []
data modify storage data item set value {id:"barrier"}
data modify storage data skill prepend from storage sys:data player[0].ability.off
execute if data storage data skill[0].id run function sys:player/ui/actions/skill/render/not_empty
execute if data storage data skill[0].id run item replace entity @s inventory.13 from entity 0-0-0-0-0 container.0

data modify storage data skill set value []
data modify storage data item set value {id:"barrier"}
data modify storage data skill prepend from storage sys:data player[0].ability.shift
execute if data storage data skill[0].id run function sys:player/ui/actions/skill/render/not_empty
execute if data storage data skill[0].id run item replace entity @s inventory.15 from entity 0-0-0-0-0 container.0

data modify entity 0-0-0-0-0 Items set value []

item modify entity @s inventory.11 sys:ui/right_skill
item modify entity @s inventory.13 sys:ui/off_skill
item modify entity @s inventory.15 sys:ui/shift_skill


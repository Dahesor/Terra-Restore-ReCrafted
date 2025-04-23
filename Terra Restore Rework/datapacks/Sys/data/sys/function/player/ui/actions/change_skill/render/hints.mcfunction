execute if score %this calculator = @s skill.right if score @s ui matches 21 run return run data modify storage data item.components."minecraft:lore" append value {translate:"ui.skill.current_equip",color:"green",italic:false}
execute if score %this calculator = @s skill.off if score @s ui matches 22 run return run data modify storage data item.components."minecraft:lore" append value {translate:"ui.skill.current_equip",color:"green",italic:false}
execute if score %this calculator = @s skill.shift if score @s ui matches 23 run return run data modify storage data item.components."minecraft:lore" append value {translate:"ui.skill.current_equip",color:"green",italic:false}

execute if score %this calculator = @s skill.right run return run function sys:player/ui/actions/change_skill/render/swap_hints
execute if score %this calculator = @s skill.off run return run function sys:player/ui/actions/change_skill/render/swap_hints
execute if score %this calculator = @s skill.shift run return run function sys:player/ui/actions/change_skill/render/swap_hints

data modify storage data item.components."minecraft:lore" append value {translate:"ui.skill.equip",color:"yellow",italic:false}
data modify storage data item.components."minecraft:custom_data".ui.trigger.id set value "select"
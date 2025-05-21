execute if score %this calculator = @s skill.right if score @s ui matches 21 run return run function sys:player/ui/actions/change_skill/render/current_equip
execute if score %this calculator = @s skill.off if score @s ui matches 22 run return run function sys:player/ui/actions/change_skill/render/current_equip
execute if score %this calculator = @s skill.shift if score @s ui matches 23 run return run function sys:player/ui/actions/change_skill/render/current_equip

execute if score @s ui matches 21 unless data storage data SkillData.slot_limit{right:1b} run return run function sys:player/ui/actions/change_skill/render/slot_locked
execute if score @s ui matches 22 unless data storage data SkillData.slot_limit{off:1b} run return run function sys:player/ui/actions/change_skill/render/slot_locked
execute if score @s ui matches 23 unless data storage data SkillData.slot_limit{shift:1b} run return run function sys:player/ui/actions/change_skill/render/slot_locked

execute if score %this calculator = @s skill.right run return run function sys:player/ui/actions/change_skill/render/swap_hints
execute if score %this calculator = @s skill.off run return run function sys:player/ui/actions/change_skill/render/swap_hints
execute if score %this calculator = @s skill.shift run return run function sys:player/ui/actions/change_skill/render/swap_hints

data modify storage data item.components."minecraft:lore" append value {translate:"ui.skill.equip",color:"yellow",italic:false}
data modify storage data item.components."minecraft:custom_data".ui.trigger.id set value "select"
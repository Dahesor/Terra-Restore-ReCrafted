data modify storage data item set value {id:"structure_void",count:1,components:{"minecraft:custom_data":{ui:{trigger:{id:"stay"}}},"minecraft:lore":[],"minecraft:tooltip_style":"terra:gui/_"}}
function sys:player/ui/actions/change_skill/render/get_skill with storage data skill[0]
data modify storage data item.components."minecraft:item_model" set from storage data SkillData.icon
data modify storage data item.components."minecraft:item_name" set from storage data SkillData.displayName
data modify storage data item.components."minecraft:lore" append from storage data SkillData.cd_mp_lore
data modify storage data item.components."minecraft:lore" append value {text:""}
data modify storage data item.components."minecraft:lore" append from storage data SkillData.description[]
data modify storage data item.components."minecraft:lore" append value {text:""}

data modify storage data item.components."minecraft:lore"[].italic set value false
data modify storage data item.components."minecraft:lore"[].color set value "#CCCCCC"

execute store result score %this calculator run data get storage data skill[0].id
function sys:player/ui/actions/change_skill/render/hints



data modify storage sys:data Inv append from storage data item
data modify storage sys:data Inv[-1].Slot set value 30b

scoreboard players add %count calculator 1
execute if score %count calculator matches 9 run scoreboard players add %count calculator 1
execute if score %count calculator matches 18 run scoreboard players add %count calculator 1
execute store result storage sys:data Inv[-1].Slot byte 1 run scoreboard players get %count calculator

data remove storage data skill[0]

execute if data storage data skill[0].id unless score %count calculator matches 26.. run function sys:player/ui/actions/change_skill/render/each
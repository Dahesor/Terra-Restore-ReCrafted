data modify storage data item set value {id:"structure_void",count:1,components:{"minecraft:custom_data":{ui:{trigger:{id:"stay",sound:"dong"}},StoredAbility:{}},"minecraft:lore":[],"minecraft:tooltip_style":"terra:gui/_"}}
function sys:player/trigs/skills/_get_skill with storage data skill[0]
data modify storage data item.components."minecraft:item_model" set from storage data SkillData.icon
data modify storage data item.components."minecraft:item_name" set from storage data SkillData.displayName
data modify storage data item.components."minecraft:lore" append from storage data SkillData.cd_mp_lore
data modify storage data item.components."minecraft:lore" append value {text:""}
data modify storage data item.components."minecraft:lore" append from storage data SkillData.description[]
data modify storage data item.components."minecraft:lore" append value {text:""}
data modify storage data item.components."minecraft:custom_data".StoredAbility.id set from storage data SkillData.id
data modify storage data item.components."minecraft:custom_data".StoredAbility.sid set from storage data SkillData.sid
data modify storage data item.components."minecraft:custom_data".StoredAbility.type set from storage data SkillData.type

data modify storage data item.components."minecraft:lore"[].italic set value false
data modify storage data item.components."minecraft:lore"[].color set value "#CCCCCC"

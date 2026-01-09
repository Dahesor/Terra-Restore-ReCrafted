$data modify storage data SkillData set from storage registry:skill data[{id:$(id)}]

data modify storage data item set value {id:"echo_shard",count:1,components:{consumable:{animation:"none",consume_seconds:9999999f,has_consume_particles:false,sound:"intentionally_empty"},max_stack_size:1,item_model:"knowledge_book","minecraft:custom_data":{skill_book:{}},tooltip_style:"terra:gui/_"}}

data modify storage data item.components."minecraft:custom_data".skill_book set from storage data SkillData
data modify storage data item.components."minecraft:item_name" set value {translate:"item.skill_book",with:[""],color:"light_purple"}
data modify storage data item.components."minecraft:item_name".with[0] set from storage data SkillData.displayName

data modify storage data item.components."minecraft:lore" append from storage data SkillData.cd_mp_lore
data modify storage data item.components."minecraft:lore" append value {text:""}
data modify storage data item.components."minecraft:lore" append from storage data SkillData.description[]
data modify storage data item.components."minecraft:lore" append value {text:""}
data modify storage data item.components."minecraft:lore" append value {translate:"action.learn",with:[{keybind:"key.use"}],color:"yellow"}
data modify storage data item.components."minecraft:lore"[].italic set value false
data modify storage data item.components."minecraft:lore" append value {translate:"ui.skill.elsewhere_equipped",color:"red",with:[{text:"1",color:"green"}],italic:false}
data modify storage data item.components."minecraft:enchantment_glint_override" set value true

execute if score %this calculator = @s skill.off run data modify storage data item.components."minecraft:lore"[-1].with[0].text set value "2"
execute if score %this calculator = @s skill.shift run data modify storage data item.components."minecraft:lore"[-1].with[0].text set value "3"


data modify storage data item.components."minecraft:lore" append value {translate:"ui.skill.swap",color:"yellow",italic:false}

execute if score %this calculator = @s skill.right run data modify storage data item.components."minecraft:custom_data".ui.trigger.data set value "right"
execute if score %this calculator = @s skill.off run data modify storage data item.components."minecraft:custom_data".ui.trigger.data set value "off"
execute if score %this calculator = @s skill.shift run data modify storage data item.components."minecraft:custom_data".ui.trigger.data set value "shift"

data modify storage data item.components."minecraft:custom_data".ui.trigger.id set value "swap"
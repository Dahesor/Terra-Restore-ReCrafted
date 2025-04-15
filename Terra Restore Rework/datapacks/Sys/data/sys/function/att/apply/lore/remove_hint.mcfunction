#隐藏原本的属性修饰器
data modify storage sys:data item.components.minecraft:tooltip_display.hidden_components append value "attribute_modifiers"
#删除鉴定提示
data remove storage sys:data item.components."minecraft:lore"[{"translate":"identification.click"}]
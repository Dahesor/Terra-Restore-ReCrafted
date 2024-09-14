#$data modify storage sys:data item.components."minecraft:attribute_modifiers".modifiers append value {amount:0,id:"sys:att/$(diff)",operation:"add_value",type:"generic.luck",slot:"mainhand"}
data modify storage sys:data item.components."minecraft:attribute_modifiers".modifiers append value {amount:0,id:"sys:att",operation:"add_value",type:"generic.luck",slot:"mainhand"}
data modify storage sys:data item.components."minecraft:attribute_modifiers".modifiers[-1].amount set from storage sys:mod test.amount
data modify storage sys:data item.components."minecraft:attribute_modifiers".modifiers[-1].operation set from storage sys:mod test.operation
data modify storage sys:data item.components."minecraft:attribute_modifiers".modifiers[-1].type set from storage sys:mod test.id


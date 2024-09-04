data modify storage sys:data Inv set value []
data modify storage sys:data Inv append from storage sys:data player[0].pack[{components:{"minecraft:attribute_modifiers":{modifiers:[{id:"sys:att"}]}}}]
data remove storage sys:data player[0].pack[{components:{"minecraft:attribute_modifiers":{modifiers:[{id:"sys:att"}]}}}]
data modify storage temp run set value {diff:0}
function sys:att/mentions/fix/loop_change
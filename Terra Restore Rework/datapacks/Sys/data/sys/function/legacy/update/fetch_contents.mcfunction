data modify storage sys:data Inv set from block ~ ~ ~ Items

execute if data storage sys:data Inv[{components:{"minecraft:custom_name":'"§6陽光原質"'}}] run data modify storage sys:data Inv[{components:{"minecraft:custom_name":'"§6陽光原質"'}}].components set from storage sys:data SaveInv[{Slot:0b}].components
execute if data storage sys:data Inv[{components:{"minecraft:custom_name":'"§6寒冷原質"'}}] run data modify storage sys:data Inv[{components:{"minecraft:custom_name":'"§6寒冷原質"'}}].components set from storage sys:data SaveInv[{Slot:3b}].components
execute if data storage sys:data Inv[{components:{"minecraft:custom_name":'"§6水之原質"'}}] run data modify storage sys:data Inv[{components:{"minecraft:custom_name":'"§6水之原質"'}}].components set from storage sys:data SaveInv[{Slot:1b}].components
execute if data storage sys:data Inv[{components:{"minecraft:custom_name":'"§6火焰原質"'}}] run data modify storage sys:data Inv[{components:{"minecraft:custom_name":'"§6火焰原質"'}}].components set from storage sys:data SaveInv[{Slot:2b}].components
execute if data storage sys:data Inv[{components:{"minecraft:custom_data":{ui:{}}}}] run data remove storage sys:data Inv[{components:{"minecraft:custom_data":{ui:{}}}}]
execute if data storage sys:data Inv[{components:{"minecraft:custom_data":{trigger:1b}}}] run data remove storage sys:data Inv[{components:{"minecraft:custom_data":{trigger:1b}}}]
data modify block ~ ~ ~ Items set from storage sys:data Inv
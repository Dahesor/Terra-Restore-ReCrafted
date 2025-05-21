data modify entity 0-0-0-0-0 Items set value []
data modify storage sys:data Inv set value []
data modify storage sys:data Inv prepend from storage data item
data modify storage sys:data Inv[0].Slot set value 0b
data modify entity 0-0-0-0-0 Items prepend from storage sys:data Inv[]
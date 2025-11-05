data modify storage comms:unlocked archive.enchantment[0].lines set value []

#Title
data modify storage comms:unlocked archive.enchantment[0].title set value {translate:"","color":"white",italic:false}
function registry:archive/parser/enchant/__get_title with storage comms:unlocked archive.enchantment[0]

#Max Level
data modify storage comms:unlocked archive.enchantment[0].lines append value {translate:"tut.ench.max_level",with:[{text:"-1",color:"yellow"}],color:"green"}
data modify storage comms:unlocked archive.enchantment[0].lines[-1].with[0].text set string storage comms:unlocked archive.enchantment[0].max_level

#Apply To
data modify storage comms:unlocked archive.enchantment[0].lines append value {translate:"tut.ench.allowed",with:[{translate:"",color:"yellow"}],color:"green"}
function registry:archive/parser/enchant/__get_applicable_item with storage comms:unlocked archive.enchantment[0]

#Lore
data modify storage comms:unlocked archive.enchantment[0].lines append value {translate:"",color:"aqua",italic: false}
function registry:archive/parser/enchant/__get_lore with storage comms:unlocked archive.enchantment[0]

scoreboard players remove $count calculator 1
data modify storage comms:unlocked archive.enchantment append from storage comms:unlocked archive.enchantment[0]
data remove storage comms:unlocked archive.enchantment[0]
execute if score $count calculator matches 1.. run function registry:archive/parser/enchant/each
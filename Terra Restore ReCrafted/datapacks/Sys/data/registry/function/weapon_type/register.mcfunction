data remove storage registry:weapon_type sword.temp
scoreboard players set %total_weight registry 0
function #registry:weapon_type/sword_types

data modify storage registry:weapon_type raw set from storage registry:weapon_type sword.temp
data modify storage registry:weapon_type parser set value []
data modify storage registry:weapon_type class set value "sword"
scoreboard players set %current_chance registry 0
function registry:weapon_type/parser/main
data modify storage registry:weapon_type sword.data set from storage registry:weapon_type parser
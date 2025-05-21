execute unless data storage registry:weapon_type raw[0].adjusts[0] run return fail
function registry:weapon_type/parser/modifier/read
data remove storage registry:weapon_type raw[0].adjusts[0]
execute if data storage registry:weapon_type raw[0].adjusts[0] run function registry:weapon_type/parser/modifier/loop
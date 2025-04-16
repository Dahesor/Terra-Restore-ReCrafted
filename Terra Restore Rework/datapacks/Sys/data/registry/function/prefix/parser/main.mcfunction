execute unless data storage registry:prefix new[0] run return fail

data modify storage registry:prefix data prepend from storage registry:prefix new[0]
function registry:prefix/parser/_generate_name_ with storage registry:prefix new[0]

data remove storage registry:prefix new[0]
execute if data storage registry:prefix new[0] run function registry:prefix/parser/main
execute unless data storage registry:skill temp[0].id run return fail
data modify storage registry:skill data prepend value {}
function registry:skills/parse/main
data remove storage registry:skill temp[0]
execute if data storage registry:skill temp[0] run function registry:skills/parse/looper
data modify storage temp run2 set value {name:""}
data modify storage temp run2.name set from storage registry:skill temp[0].lore[0].with[0].name
function registry:skills/parse/display/with/_get_value_to_const_ with storage temp run2
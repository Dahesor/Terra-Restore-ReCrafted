data modify storage dah.sch:task this set from storage dah.sch:task save[0]
data remove storage dah.sch:task save[0]

execute if data storage dah.sch:task this.debug run function dah.sch:z_private/debug/exe with storage dah.sch:task this

function dah.sch:z_private/exe/dimension_check
function dah.sch:z_private/exe/check
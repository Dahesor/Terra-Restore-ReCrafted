execute unless score @s dah.actbar.UID matches 1.. run return -1
function dah.actbar_mixer:z_private/uid/get

$data remove storage dah:actbar data[0].content[{id:"$(id)"}]
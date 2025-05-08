tag @s remove shielder
tag @s remove basic_shield
loot replace entity @s weapon.offhand loot sys:mech/off_hand_trigger
function dah.actbar_mixer:z_private/uid/get
data remove storage dah:actbar data[0].content[{id:"skills_cd"}]
function sys:player/trigs/cd/displayer
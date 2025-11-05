execute store result score $count calculator run data get storage comms:unlocked archive.enchantment
execute unless score $count calculator matches 1.. run return fail
function registry:archive/parser/enchant/each
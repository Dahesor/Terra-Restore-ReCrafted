execute if items entity @s weapon.offhand *[!custom_data~{trigger:1b}] run function sys:player/trigs/fool/process_return
clear @s #sys:offhand_trigger[custom_data~{trigger:1b}]
loot replace entity @s weapon.offhand loot sys:mech/off_hand_trigger
execute if entity @s[tag=shielder] run function registry:skills/special/shield_agent
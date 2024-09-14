execute if items entity @s weapon.offhand *[!custom_data~{trigger:1b}] run function sys:player/trigs/fool/process_return
clear @s carrot_on_a_stick[custom_data~{trigger:1b}]
loot replace entity @s weapon.offhand loot sys:mech/off_hand_trigger
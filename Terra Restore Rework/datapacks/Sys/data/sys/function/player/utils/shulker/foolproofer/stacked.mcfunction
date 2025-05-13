tag @s add __shulker.mid_process

data modify storage data Inv set value []
function sys:player/utils/shulker/foolproofer/transfer_data
function sys:player/utils/shulker/foolproofer/remove_extra

execute if data storage data Inv[0] run function sys:player/utils/shulker/foolproofer/for_each

tag @s remove __shulker.mid_process
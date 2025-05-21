execute store result score %this calculator run data get storage data class[0].chance
execute if score $weapon_type calculator > %this calculator run return run data modify storage data selected_type set from storage data class[0]
execute unless data storage data class[1] run return run data modify storage data selected_type set from storage data class[0]
data remove storage data class[0]
execute if data storage data class[0] run function sys:att/apply/types/select
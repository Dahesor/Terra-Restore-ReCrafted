scoreboard players set #success_count calculator 0
scoreboard players set #dz calculator -2
execute positioned ~ ~ ~-2 if function sys:player/utils/tp/reciver/get_column run scoreboard players add #success_count calculator 1
scoreboard players set #dz calculator -1
execute positioned ~ ~ ~-1 if function sys:player/utils/tp/reciver/get_column run scoreboard players add #success_count calculator 1
scoreboard players set #dz calculator 0
execute positioned ~ ~ ~ if function sys:player/utils/tp/reciver/get_column run scoreboard players add #success_count calculator 1
scoreboard players set #dz calculator 1
execute positioned ~ ~ ~1 if function sys:player/utils/tp/reciver/get_column run scoreboard players add #success_count calculator 1
scoreboard players set #dz calculator 2
execute positioned ~ ~ ~2 if function sys:player/utils/tp/reciver/get_column run scoreboard players add #success_count calculator 1
return run scoreboard players get #success_count calculator
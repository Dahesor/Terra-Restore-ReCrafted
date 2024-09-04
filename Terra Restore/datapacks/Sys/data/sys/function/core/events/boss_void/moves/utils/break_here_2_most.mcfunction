execute if score boss_void_mode data matches 2.. run return run function sys:core/events/boss_void/moves/utils/break_here

execute if block ~ ~ ~ cracked_stone_bricks run setblock ~ ~ ~ andesite_slab[type=double] destroy
execute if block ~ ~ ~ stone_bricks run setblock ~ ~ ~ cracked_stone_bricks destroy
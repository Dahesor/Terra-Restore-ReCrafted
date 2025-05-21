execute if block ~ ~ ~ andesite_slab[type=double] if block ~ ~1 ~ air run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ cracked_stone_bricks run setblock ~ ~ ~ andesite_slab[type=double] destroy
execute if block ~ ~ ~ stone_bricks run setblock ~ ~ ~ cracked_stone_bricks destroy
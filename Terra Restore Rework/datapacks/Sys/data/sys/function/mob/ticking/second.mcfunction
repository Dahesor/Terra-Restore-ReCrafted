execute if entity @s[tag=die_in_120s] run function sys:legacy/13_utils/120s
execute if entity @s[tag=deathDrop_head] run function sys:player/utils/drop/display/head_update
execute if entity @s[tag=player_wolf] if score @s genericCD < $gametime calculator at @s run function sys:skills/right/friend/timeup
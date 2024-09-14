tp @s 3025.43 ~ -1811.69 ~ 90.00
function sys:player/music/dregs
loot give @s loot sys:mech/health_potion
loot give @s loot sys:mech/health_potion
loot give @s loot sys:mech/health_potion
schedule function sys:core/events/boss_void/setup/repair_music 1s

scoreboard players set @s CD.off 1
scoreboard players set @s CD.right 1
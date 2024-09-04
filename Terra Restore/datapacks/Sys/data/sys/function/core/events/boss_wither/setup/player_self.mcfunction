scoreboard players set @s region 3000
scoreboard players set @s music -1
stopsound @s record
loot give @s loot sys:mech/health_potion
loot give @s loot sys:mech/health_potion
loot give @s loot sys:mech/health_potion
title @s times 20 60 20
title @s title {"translate":"function.Sys.data.sys.function.core.events.boss_wither.setup.player_self.line7","color": "red","bold": true}
title @s subtitle {"translate": "boss.wither.lore","color": "white","bold": true}
function sys:player/music/badjuju

scoreboard players set @s CD.off 1
scoreboard players set @s CD.right 1
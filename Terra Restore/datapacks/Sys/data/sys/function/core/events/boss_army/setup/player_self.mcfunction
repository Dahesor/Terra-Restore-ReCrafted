tp @s ~ ~-4 ~
scoreboard players set @s region 3000
scoreboard players set @s music -1
stopsound @s record
loot give @s loot sys:mech/health_potion
loot give @s loot sys:mech/health_potion
loot give @s loot sys:mech/health_potion
title @s times 40 60 20
title @a title {"text": "","color": "red","bold": true}
title @a subtitle {"translate": "boss.army.line.1","color": "red","bold": true}
function sys:player/music/daring
effect give @s instant_health 1 10 true
effect give @s saturation 3 3 true

scoreboard players set @s CD.off 1
scoreboard players set @s CD.right 1
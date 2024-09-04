scoreboard players set boss_void data 1
execute store result score boss_void_players data if entity @a[tag=in_boss_void]
title @a[tag=in_boss_void] times 20 60 20
title @a[tag=in_boss_void] title {"translate":"boss.void.name","color": "red","bold": true}
title @a[tag=in_boss_void] subtitle {"translate":"boss.void.lore"}
execute as @a[tag=in_boss_void] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 0.5 1
tellraw @a[tag=in_boss_void] [{"text":"[","extra":[{"translate":"boss.void.name","color":"red"},"]"]}," ",{"translate": "boss.void.line.1"}]

function sys:core/events/boss_void/setup/boss_spawn
bossbar add sys:boss_void {"translate":"boss.void.name","color":"red","bold":true}
bossbar set sys:boss_void visible false
bossbar set sys:boss_void color red
bossbar set sys:boss_void style notched_20
scoreboard players add #temp calculator 1000
execute store result bossbar sys:boss_void max run scoreboard players get #temp calculator
execute store result bossbar sys:boss_void value run scoreboard players get #temp calculator
bossbar set sys:boss_void players @a[tag=in_boss_void]
bossbar set sys:boss_void visible true

tp @a -519.45 41.00 20.39 180 0
tp @a[scores={opening=2}] -520.65 41.00 -4.70 0 0
tp @a[scores={opening=3}] -507.30 41.00 7.70 90 0
tp @a[scores={opening=4}] -532.70 41.00 8.45 270 0
execute as @e[type=villager,tag=opening] at @s run function sys:legacy/opening/acts/kill
execute positioned -520.01 46.00 8.05 run function sys:legacy/opening/acts/vuco
schedule function sys:legacy/opening/acts/bgm 2s
function dah.sch:set {time:40,run:'tellraw @a [{"translate":"npc.vuco"}," ",{translate:"legacy.opening.acts.1.line7"}]'}
schedule function sys:legacy/opening/acts/2 14s
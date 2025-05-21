tp @a -519.55 41.00 -384.30 180 -10
tp @a[scores={opening=2}] -507.30 41.00 -397.42 90 -10
tp @a[scores={opening=3}] -520.42 41.00 -409.66 0 -10
tp @a[scores={opening=4}] -532.38 41.00 -396.43 -90 -10
difficulty peaceful

execute if entity @a[scores={opening=2..}] run function dah.sch:set {time:30,run:'tellraw @a [{"translate":"npc.vuco"}," ",{"translate":"legacy.opening.acts.4.line6"}]'}
execute unless entity @a[scores={opening=2..}] run function dah.sch:set {time:30,run:'tellraw @a [{"translate":"npc.vuco"}," ",{"translate":"legacy.opening.acts.4.line7"}]'}
execute as @e[type=villager,tag=opening] at @s run function sys:legacy/opening/acts/kill
execute positioned -519.83 46.00 -397.35 run function sys:legacy/opening/acts/vuco

schedule function sys:legacy/opening/acts/5 380t
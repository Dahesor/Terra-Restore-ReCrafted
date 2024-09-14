execute as @e[type=villager,tag=opening] at @s run function sys:legacy/opening/acts/kill
tp @a -760.62 49.00 176.30 0 0
tp @a[scores={opening=2}] -754.30 49.00 181.58 90 0
tp @a[scores={opening=3}] -759.49 49.00 187.49 180 0
tp @a[scores={opening=4}] -765.58 49.00 182.37 -90 0


function dah.sch:set {time:80,run:'tellraw @a ["[��aVuco��f] ",{"tranunction.legacy.opening.acts.5.line7"}]'}
schedule function sys:legacy/opening/acts/6 20s
execute as @e[type=villager,tag=opening] at @s run function sys:legacy/opening/acts/kill
tp @a -760.62 49.00 176.30 0 0
tp @a[scores={opening=2}] -754.30 49.00 181.58 90 0
tp @a[scores={opening=3}] -759.49 49.00 187.49 180 0
tp @a[scores={opening=4}] -765.58 49.00 182.37 -90 0


function dah.sch:set {time:80,run:'tellraw @a ["[§aVuco§f] ",{"text":"你会在旅途中找到一种称为「大地复苏」的神秘物品, 你可以在勇者殿堂中使用它们来回复失土, 并将和平重新带回这片大地"}]'}
schedule function sys:legacy/opening/acts/6 20s
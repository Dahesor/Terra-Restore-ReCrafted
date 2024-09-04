tp @a -519.55 41.00 -384.30 180 -10
tp @a[scores={opening=2}] -507.30 41.00 -397.42 90 -10
tp @a[scores={opening=3}] -520.42 41.00 -409.66 0 -10
tp @a[scores={opening=4}] -532.38 41.00 -396.43 -90 -10
difficulty peaceful

execute if entity @a[scores={opening=2..}] run function dah.sch:set {time:30,run:'tellraw @a ["[§aVuco§f] ",{"text":"你们是我们所有人的希望。你们的任务是踏上旅途, 使大地回复原本的面貌, 并消灭仍蛰伏于黑暗角落的腐败。我已赐予你完成使命的力量"}]'}
execute unless entity @a[scores={opening=2..}] run function dah.sch:set {time:30,run:'tellraw @a ["[§aVuco§f] ",{"text":"你是我们所有人的希望。你的任务是踏上旅途, 使大地回复原本的面貌, 并消灭仍蛰伏于黑暗角落的腐败。我已赐予你完成使命的力量"}]'}
execute as @e[type=villager,tag=opening] at @s run function sys:legacy/opening/acts/kill
execute positioned -519.83 46.00 -397.35 run function sys:legacy/opening/acts/vuco

schedule function sys:legacy/opening/acts/5 380t
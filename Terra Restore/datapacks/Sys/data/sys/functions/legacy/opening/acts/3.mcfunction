tp @a -730.52 46.00 291.30 0 0
tp @a[scores={opening=2}] -737.30 46.00 291.30 0 0
tp @a[scores={opening=3}] -730.30 46.00 308.69 180 0
tp @a[scores={opening=4}] -737.45 46.00 308.51 180 0

function dah.sch:set {time:40,run:'tellraw @a ["[§aVuco§f] ",{"text":"大地仍然遍體鱗傷, 而腐敗似乎又伴隨著怪物的肆虐再次蔓延開來"}]'}
schedule function sys:legacy/opening/acts/prepare_3 1t
schedule function sys:legacy/opening/acts/summon_dis 50t
function dah.sch:set {time:100,run:'setblock -747 51 307 minecraft:fire'}
function sys:legacy/opening/acts/check_make_concreate
function dah.sch:set {time:350,run:'schedule clear sys:legacy/opening/acts/check_make_concreate'}
function dah.sch:set {time:350,run:'execute as @e[tag=opening] at @s run function sys:legacy/opening/acts/kill'}
schedule function sys:legacy/opening/acts/4 351t
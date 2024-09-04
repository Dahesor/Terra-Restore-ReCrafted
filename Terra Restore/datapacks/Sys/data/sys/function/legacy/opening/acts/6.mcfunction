tp @a -754.70 49.00 141.41 90 0
tp @a[scores={opening=2}] -765.30 49.00 142.30 -90 0
tp @a[scores={opening=3}] -760.34 49.00 136.35 0 0
tp @a[scores={opening=4}] -759.30 49.00 147.62 180 0
function dah.sch:set {time:80,run:'tellraw @a ["[§aVuco§f] ",{"text":"你还必须找到所有的古代羊毛, 将他们摆回位于忘却之地的纪念碑上, 以让倪拉重新回归平静与祥和, 确保那些怪物带来的伤害不再重演"}]'}
schedule function sys:legacy/opening/acts/7 20s
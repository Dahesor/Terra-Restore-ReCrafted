tp @a -754.70 49.00 141.41 90 0
tp @a[scores={opening=2}] -765.30 49.00 142.30 -90 0
tp @a[scores={opening=3}] -760.34 49.00 136.35 0 0
tp @a[scores={opening=4}] -759.30 49.00 147.62 180 0
function dah.sch:set {time:80,run:'tellraw @a ["[§aVuco§f] ",{"text":"你還必須找到所有的古代羊毛, 將他們擺回位於忘卻之地的紀念碑上, 以讓倪拉重新回歸平靜與祥和, 確保那些怪物帶來的傷害不再重演"}]'}
schedule function sys:legacy/opening/acts/7 20s
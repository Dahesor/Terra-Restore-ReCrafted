tp @a -759.39 49.00 107.41 180 -4.96
tp @a[scores={opening=2}] -760.58 49.00 96.70 0 0
tp @a[scores={opening=3}] -754.30 49.00 101.62 90 0
tp @a[scores={opening=4}] -765.70 49.00 102.68 -90 0
difficulty normal
function dah.sch:set {time:80,run:'tellraw @a ["[¡ìaVuco¡ìf] ",{"translate":"storage.task"}]'}
function dah.sch:set {time:400,run:'tellraw @a ["[¡ìaVuco¡ìf] ",{"translate":"storage.task.1"}]'}
schedule function sys:legacy/opening/end 37s

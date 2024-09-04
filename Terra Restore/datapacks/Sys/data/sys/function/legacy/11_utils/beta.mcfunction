execute unless score 11_opening data matches 2.. run tellraw @s {"translate": "front.locked","color": "red"}
execute unless score 11_opening data matches 2.. at @s run return run playsound terra:ui.denied master @s ~ ~ ~ 1 1.3
tp @s 2475 236 -920
title @s times 30 40 30
title @s title ""
title @s subtitle {"translate":"ship.beta"}
function dah.sch:set {time:2,run:"execute at @s run playsound terra:event.tp master @s ~ ~ ~ 0.5 1 1"}
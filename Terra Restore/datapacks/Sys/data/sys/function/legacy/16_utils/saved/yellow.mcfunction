execute if score 16_yellow data matches 1 run return fail

scoreboard players set 16_yellow data 1
tellraw @a[scores={region=17}] {"translate":"area.16.switch","color": "yellow"}
setblock 3102 134 889 minecraft:fire destroy
function dah.sch:set {time:20,run:"playsound terra:event.tp"}
function dah.sch:set {time:21,run:"tp @e[type=villager,distance=..30,tag=17_god] ~ ~-250 ~"}
function dah.sch:set {time:20,run:'tellraw @a[scores={region=17}] {"translate":"area.17.save.yellow"}'}
function #dah.sch:set {time:20,run:"execute at @s run particle enchant ~ ~0.3 ~ .5 .5 .5 .5 10000",extra:[{as:"@e[type=villager,distance=..30,tag=17_god]"}]}
function sys:legacy/16_utils/saved/open

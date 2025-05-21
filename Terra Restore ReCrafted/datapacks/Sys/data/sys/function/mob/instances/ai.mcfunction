tag @s add quater_ticking_permanent
scoreboard players add @s genericCD 1
execute unless score @s genericCD matches 15.. run return fail

scoreboard players set @s genericCD 0
execute unless entity @a[distance=..14,gamemode=!spectator] run return fail
tellraw @a[distance=..10] ["[",{"translate":"mob.rawr","color": "red"},"] ",{"translate":"mob.rawr.line.1"}]
particle dripping_water ~2 ~ ~ 0 3 0 10 200 force
particle dripping_water ~-2 ~ ~ 0 3 0 10 200 force
particle dripping_water ~ ~ ~2 0 3 0 10 400 force
particle dripping_water ~ ~ ~-2 0 3 0 10 400 force
execute positioned ^ ^ ^2 as @a[distance=..5,gamemode=!spectator] at @s run summon arrow ~ ~2.2 ~ {damage:5.0d,Invulnerable:0b,life:0s,Motion:[0.0d,-2.25d,0.0d],OnGround:0b,pickup:2b,Tags:["Rawr_s_Roar"]}
playsound entity.spider.ambient hostile @a ~ ~ ~ 2 0.2
function dah.sch:set {time:2,run:"playsound entity.spider.ambient hostile @a ~ ~ ~ 2 0.2"}
function dah.sch:set {time:4,run:"playsound entity.spider.ambient hostile @a ~ ~ ~ 2 0.2"}
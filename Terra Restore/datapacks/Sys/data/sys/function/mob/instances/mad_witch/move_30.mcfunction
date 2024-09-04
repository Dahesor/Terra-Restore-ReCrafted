scoreboard players set @s genericCD 0
data merge entity @s {NoAI:0b}
playsound item.crossbow.loading_end master @a ~ ~ ~ 1 0.7
playsound item.crossbow.loading_end master @a ~ ~ ~ 1 0.7
playsound item.crossbow.loading_end master @a ~ ~ ~ 1 0.7
execute at @a[distance=..19,gamemode=!spectator] run summon potion ~ ~9 ~ {Item:{id:"splash_potion",count:1,components:{potion_contents:{custom_color:6785558,custom_effects:[{id:"nausea",amplifier:2b,duration:200},{id:"instant_damage",amplifier:0b,duration:30},{id:"wither",amplifier:2b,duration:60},{id:"hunger",amplifier:0b,duration:160}]}}}}
#1

execute at @a[distance=..4] run summon splash_potion ~ ~2.3 ~ {Item:{id:"splash_potion",count:1b,components:{potion_contents:{potion:"healing"}}}}
scoreboard players set @s CD.off 1100
function sys:skills/calc_cd_off
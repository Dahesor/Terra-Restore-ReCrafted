scoreboard players set @s music 330
stopsound @s record
playsound terra:bgm.ruins_of_harmony record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Ruins Of Harmony","Radiarc"]}]
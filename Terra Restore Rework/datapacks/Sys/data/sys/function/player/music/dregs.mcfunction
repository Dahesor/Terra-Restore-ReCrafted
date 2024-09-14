scoreboard players set @s music 190
stopsound @s record
playsound terra:bgm.dregs_of_a_bitter_cup record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Dregs of a Bitter Cup","Makkon"]}]
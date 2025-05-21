scoreboard players set @s music 285
stopsound @s record
playsound terra:bgm.isolating_the_variable record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Isolating the Variable","Radiarc"]}]
scoreboard players set @s music 150
stopsound @s record
playsound terra:bgm.radiarc_flamescale_mountain record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Flamescale Mountain","Radiarc"]}]
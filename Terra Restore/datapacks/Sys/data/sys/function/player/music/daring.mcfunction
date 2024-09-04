scoreboard players set @s music 255
stopsound @s record
playsound terra:bgm.radiarc_daring record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Daring","Radiarc"]}]
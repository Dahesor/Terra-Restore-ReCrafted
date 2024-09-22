scoreboard players set @s music 200
stopsound @s record
playsound terra:bgm.radiarc_the_path_of_darkness record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["The Path of Darkness","Radiarc"]}]
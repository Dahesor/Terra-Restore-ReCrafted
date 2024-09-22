scoreboard players set @s music 288
stopsound @s record
playsound terra:bgm.radiarc_calling record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Calling","Radiarc"]}]
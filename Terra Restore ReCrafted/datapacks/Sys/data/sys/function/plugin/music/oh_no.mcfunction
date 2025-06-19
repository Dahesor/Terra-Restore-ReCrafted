scoreboard players set @s music 40
stopsound @s record
playsound terra:bgm.oh_no record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Oh No","Radiarc",""]}]
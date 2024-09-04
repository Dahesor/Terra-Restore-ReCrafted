scoreboard players set @s music 200
stopsound @s record
playsound terra:bgm.badjuju record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Bad Juju","Makkon"]}]
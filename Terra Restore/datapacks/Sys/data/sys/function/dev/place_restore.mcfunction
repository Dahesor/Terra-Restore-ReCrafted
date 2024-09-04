# $(id)

execute align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {height:0.45,width:1.1,Tags:["terra","new_terra"],response:1b}
$scoreboard players set @n[type=interaction,tag=new_terra,distance=..3] genericCD $(id)
tag @n[type=interaction,tag=new_terra,distance=..3] remove new_terra
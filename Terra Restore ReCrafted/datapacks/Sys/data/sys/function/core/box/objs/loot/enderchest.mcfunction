scoreboard players add $box loot_box 1
execute align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {height:1.1,width:1.1,Tags:["box","new_box"]}
data modify storage sys:loot_box test set value {id:0,players:[],loot:"sys:main/loot/enderchest",tags:["ender_chest","loot"],display:{id:"ender_chest",count:1,components:{enchantment_glint_override:true}}}
execute store result storage sys:loot_box test.id int 1 run scoreboard players get $box loot_box
data modify storage sys:loot_box data append from storage sys:loot_box test

execute as @n[type=interaction,distance=..3,tag=new_box] at @s run function sys:core/box/load/initialize
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui_check:1b}}}}]
execute as @e[type=area_effect_cloud,tag=2_leap_booster] run data merge entity @s {Age:20,potion_contents:{custom_effects:[{id:"jump_boost",amplifier:4b,duration:50,show_particles:0b,show_icon:1b},{id:"speed",amplifier:4b,duration:50,show_particles:0b,show_icon:1b}]}}
execute as @e[type=interaction,tag=box] at @s run function sys:core/box/load/check_load

execute as 0-0-0-0-0 run function sys:core/despawn
summon chest_minecart 0 300 0 {NoGravity:1b,Invulnerable:1b,UUID:[I;0,0,0,0]}

loot replace entity 0-0-0-0-0 container.0 loot sys:main/drops/sun
loot replace entity 0-0-0-0-0 container.1 loot sys:main/drops/water
loot replace entity 0-0-0-0-0 container.2 loot sys:main/drops/fire
loot replace entity 0-0-0-0-0 container.3 loot sys:main/drops/ice

data modify storage sys:data SaveInv set from entity 0-0-0-0-0 Items
data remove entity 0-0-0-0-0 Items[]
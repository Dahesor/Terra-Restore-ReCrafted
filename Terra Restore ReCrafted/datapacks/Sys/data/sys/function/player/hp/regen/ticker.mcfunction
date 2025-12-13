scoreboard players remove @s food_timer 10
execute if entity @s[tag=hunger.saturated] run scoreboard players remove @s food_timer 70
execute unless score @s food_timer matches ..0 run return fail

scoreboard players operation @s food_timer += @s natural_regen
function sys:player/hp/regen/cases
execute if entity @s[tag=hunger.hungry] run return fail
execute unless score @s HP.dry < @s MAX_HP run return fail

scoreboard players add @s HP.dry 100
execute if score @s HP.dry > @s MAX_HP run scoreboard players operation @s HP.dry = @s MAX_HP



item replace entity @s saddle with barrier[enchantments={"sys:mech/exhustion":1},equippable={slot:"saddle",equip_sound:"intentionally_empty"}]
function sys:core/trigger_enchant

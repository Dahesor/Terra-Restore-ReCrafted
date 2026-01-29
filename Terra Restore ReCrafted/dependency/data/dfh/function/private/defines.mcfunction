return fail
#Do not execute this function

scoreboard objectives add dfh.var dummy

scoreboard objectives add dfh.HP dummy
scoreboard objectives add dfh.Absorb dummy
scoreboard objectives add dfh.MAX_HP dummy
scoreboard objectives add dfh.Regen dummy
scoreboard objectives add dfh.settings dummy
scoreboard objectives add dfh.armor dummy
scoreboard objectives add dfh.toughness dummy
scoreboard objectives add dfh.ench_defence dummy
scoreboard objectives add dfh.disabled_trigger dummy

scoreboard players set $dmg dfh.var 1
scoreboard players set $heal dfh.var 1
scoreboard players set $by_entity dfh.var 1
scoreboard players set $regen_amount dfh.var 1
scoreboard players set $reduce_hunger dfh.var 1
scoreboard players set #version dfh.settings 0

tag @s add dfh.__inventory_changed
tag @s add dfh.update_armor
scoreboard objectives add dfh.calculator dummy
scoreboard objectives add dfh.var dummy

scoreboard objectives add dfh.HP dummy
scoreboard objectives add dfh.Absorb dummy
scoreboard objectives add dfh.MAX_HP dummy
scoreboard objectives add dfh.Regen dummy
scoreboard objectives add dfh.absorb_cache dummy
scoreboard objectives add dfh.hp_cache dummy
scoreboard objectives add dfh.update dummy
scoreboard objectives add dfh.saved_blink dummy
scoreboard objectives add dfh.settings dummy
scoreboard objectives add dfh.armor dummy
scoreboard objectives add dfh.toughness dummy
scoreboard objectives add dfh.ench_defence dummy
scoreboard objectives add dfh.monitor.HP dummy
scoreboard objectives add dfh.monitor.Shield dummy
scoreboard objectives add dfh.food_timer dummy
scoreboard objectives add dfh.item_fix deathCount
scoreboard objectives add dfh.gamemode dummy

#NUM
scoreboard players set #-1 dfh.calculator -1
scoreboard players set #2 dfh.calculator 2
scoreboard players set #3 dfh.calculator 3
scoreboard players set #5 dfh.calculator 5
scoreboard players set #6 dfh.calculator 6
scoreboard players set #10 dfh.calculator 10
scoreboard players set #20 dfh.calculator 20
scoreboard players set #30 dfh.calculator 30
scoreboard players set #60 dfh.calculator 60
scoreboard players set #100 dfh.calculator 100
scoreboard players set #1000 dfh.calculator 1000
scoreboard players set #10000 dfh.calculator 10000

execute unless score #init dfh.settings matches 1.. run function dfh:default_settings

execute if score virtual_health dfh.settings matches 1 run gamerule natural_health_regeneration false
tellraw @a {"translate":"event.ever_night","color": "yellow"}
gamerule doDaylightCycle false
gamerule doWeatherCycle false
time set 18000
execute unless score 16_has_player data matches 1 run weather rain 300
scoreboard players set 14_has_player data 1
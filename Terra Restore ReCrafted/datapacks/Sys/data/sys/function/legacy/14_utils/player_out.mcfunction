scoreboard players set 14_has_player data 0
gamerule doDaylightCycle true
gamerule doWeatherCycle false
execute unless score 16_has_player data matches 1 run weather clear 909090
tellraw @a {"translate":"event.ever_night_end","color": "yellow"}
scoreboard players set 16_has_player data 0
gamerule doDaylightCycle true
gamerule doWeatherCycle false
weather clear 800
execute if score 14_has_player data matches 1 run weather rain 800
tellraw @a {"translate":"event.ever_night.16_end","color": "red"}
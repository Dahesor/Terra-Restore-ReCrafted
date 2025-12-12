scoreboard players set 14_has_player data 0
gamerule advance_time true
gamerule advance_weather false
execute unless score 16_has_player data matches 1 run weather clear 909090
tellraw @a {"translate":"event.ever_night_end","color": "yellow"}
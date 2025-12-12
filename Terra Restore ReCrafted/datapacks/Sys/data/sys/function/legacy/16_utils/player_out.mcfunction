scoreboard players set 16_has_player data 0
gamerule advance_time true
gamerule advance_weather false
weather clear 800
execute if score 14_has_player data matches 1 run weather rain 800
tellraw @a {"translate":"event.ever_night.16_end","color": "red"}
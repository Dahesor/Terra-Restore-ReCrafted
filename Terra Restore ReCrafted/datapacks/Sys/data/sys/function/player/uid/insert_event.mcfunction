data modify storage sys:data new_event merge value {until:1}
execute store result score #$%event_time calculator run data get storage sys:data new_event.time
scoreboard players operation #$%event_time calculator += $gametime calculator
execute store result storage sys:data new_event.until int 1 run scoreboard players get #$%event_time calculator

function sys:player/uid/event
data modify storage sys:data events[0].Events append from storage sys:data new_event
data modify storage sys:data new_event set value {}
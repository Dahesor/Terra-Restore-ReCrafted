data modify storage data skill set value []
data modify storage temp run set value {id:""}
item replace entity 0-0-0-0-0 container.0 from entity @s player.cursor
data modify storage data skill prepend from entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:custom_data".StoredAbility
data modify storage temp run.id set from entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:custom_data".ui.trigger.data
data modify entity 0-0-0-0-0 Items set value []


function sys:player/uid/get

execute if score @s ui matches 21 run data modify storage data skill append from storage sys:data player[0].ability.right
execute if score @s ui matches 21 run scoreboard players operation $temp calculator = @s skill.right
execute if score @s ui matches 22 run data modify storage data skill append from storage sys:data player[0].ability.off
execute if score @s ui matches 22 run scoreboard players operation $temp calculator = @s skill.off
execute if score @s ui matches 23 run data modify storage data skill append from storage sys:data player[0].ability.shift
execute if score @s ui matches 23 run scoreboard players operation $temp calculator = @s skill.shift
execute if data storage temp run{id:"right"} run scoreboard players operation @s skill.right = $temp calculator
execute if data storage temp run{id:"off"} run scoreboard players operation @s skill.off = $temp calculator
execute if data storage temp run{id:"shift"} run scoreboard players operation @s skill.shift = $temp calculator
execute if data storage temp run{id:"right"} run data modify storage sys:data player[0].ability.right set from storage data skill[1]
execute if data storage temp run{id:"off"} run data modify storage sys:data player[0].ability.off set from storage data skill[1]
execute if data storage temp run{id:"shift"} run data modify storage sys:data player[0].ability.shift set from storage data skill[1]


execute store result score $temp calculator run data get storage data skill[0].id
execute if score @s ui matches 21 run data modify storage sys:data player[0].ability.right set from storage data skill[0]
execute if score @s ui matches 21 run scoreboard players operation @s skill.right = $temp calculator
execute if score @s ui matches 22 run data modify storage sys:data player[0].ability.off set from storage data skill[0]
execute if score @s ui matches 22 run scoreboard players operation @s skill.off = $temp calculator
execute if score @s ui matches 23 run data modify storage sys:data player[0].ability.shift set from storage data skill[0]
execute if score @s ui matches 23 run scoreboard players operation @s skill.shift = $temp calculator

function sys:player/ui/actions/skill/to
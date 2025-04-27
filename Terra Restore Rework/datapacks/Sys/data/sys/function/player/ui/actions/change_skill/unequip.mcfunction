function sys:player/uid/get
execute if score @s ui matches 21 run data modify storage sys:data player[0].ability.right set value {}
execute if score @s ui matches 21 run scoreboard players set @s skill.right 0
execute if score @s ui matches 22 run data modify storage sys:data player[0].ability.off set value {}
execute if score @s ui matches 22 run scoreboard players set @s skill.off 0
execute if score @s ui matches 23 run data modify storage sys:data player[0].ability.shift set value {}
execute if score @s ui matches 24 run scoreboard players set @s skill.shift 0

function sys:player/ui/actions/skill/to
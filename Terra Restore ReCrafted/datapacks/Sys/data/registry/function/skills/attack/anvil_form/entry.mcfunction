tag @s add SKILL.anvil_form
data modify storage dah.sch:new new set value {run:"function registry:skills/attack/anvil_form/end",time:120,offline:"delay"}
#Calculate Duration

scoreboard players operation #temp const = @s STR
scoreboard players operation #temp const *= s.anvil_form.STR const
scoreboard players operation #temp const /= #5 calculator

scoreboard players operation $duration calculator = #temp const

scoreboard players operation #temp const = @s CON
scoreboard players operation #temp const *= s.anvil_form.CON const
scoreboard players operation #temp const /= #5 calculator

scoreboard players operation $duration calculator += #temp const

execute store result storage dah.sch:new new.time int 1 run scoreboard players get $duration calculator
execute if score $skill_slot calculator matches 1 run scoreboard players operation @s CD.right += $duration calculator
execute if score $skill_slot calculator matches 2 run scoreboard players operation @s CD.off += $duration calculator
execute if score $skill_slot calculator matches 3 run scoreboard players operation @s CD.shift += $duration calculator

function dah.sch:new

playsound block.anvil.place player @s ~ ~ ~ 1 0.8
playsound block.anvil.place player @s ~ ~ ~ 1 1.3
data modify storage dah.sch:new new set value {run:"playsound block.anvil.place player @s ~ ~ ~ 1 1.3",time:3,offline:"discard"}
function dah.sch:new
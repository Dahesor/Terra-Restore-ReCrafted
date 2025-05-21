execute store result score $BaseMp calculator run data get storage data SkillData.mp_cost
function sys:player/trigs/modify/mp_adjust

execute if score $BaseMp calculator > @s MP run return fail

scoreboard players operation @s MP -= $BaseMp calculator
function sys:player/bar/mp/display/update
return 1
scoreboard players set $skill_slot calculator 1
scoreboard players set @s right_trigger 0
execute if score @s right.pause matches 1.. run return fail
scoreboard players operation #temp calculator = @s CD.right
scoreboard players set @s right.pause 4
execute if score #temp calculator matches 1.. run return run function sys:player/trigs/skills/in_cd


function sys:player/uid/get
execute unless data storage sys:data player[0].ability.right.id run return fail

function sys:player/trigs/skills/_get_skill with storage sys:data player[0].ability.right

execute unless function sys:player/trigs/modify/mp run return run function sys:player/trigs/skills/need_mp

scoreboard players set $var const 0
execute if data storage data SkillData.var store result score $var const run data get storage data SkillData.var
function sys:player/trigs/skills/execute_skill with storage data SkillData

execute store result score $RawCD calculator run data get storage data SkillData.cd

function sys:player/trigs/modify/cd_adjust

scoreboard players operation @s maxCD.right = $RawCD calculator
scoreboard players operation @s CD.right = $RawCD calculator
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.7 2 0.7
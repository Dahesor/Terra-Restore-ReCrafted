function sys:player/trigs/skills/reset_off
scoreboard players operation #temp calculator = @s CD.off
execute if score #temp calculator matches 1.. run return run function sys:player/trigs/skills/in_cd


function sys:player/uid/get
execute unless data storage sys:data player[0].ability.off.id run return fail

function sys:player/trigs/skills/_get_skill with storage sys:data player[0].ability.off

execute unless function sys:player/trigs/modify/mp run return run function sys:player/trigs/skills/need_mp


function sys:player/trigs/skills/execute_skill with storage data SkillData

execute store result score $RawCD calculator run data get storage data SkillData.cd

function sys:player/trigs/modify/cd_adjust

scoreboard players operation @s maxCD.off = $RawCD calculator
scoreboard players operation @s CD.off = $RawCD calculator
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.7 2 0.7
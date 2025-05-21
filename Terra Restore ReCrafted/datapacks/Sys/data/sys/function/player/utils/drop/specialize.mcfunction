scoreboard players set @s death 2
execute unless entity @s[tag=unlockDeathDrop] run data modify storage temp UUID set from entity @s UUID
execute if entity @s[tag=unlockDeathDrop] run data remove storage temp UUID

execute if entity @s[tag=in_boss] run return run function sys:player/utils/drop/cases/keep_everything
execute if entity @s[tag=domain_tpback] run return run function sys:player/utils/drop/cases/keep_everything
execute if score @s region matches 100 run return run function sys:player/utils/drop/cases/keep_everything
execute if score @s region matches 14 run return run function sys:player/utils/drop/cases/keep_everything
function sys:player/utils/drop/cases/randomly
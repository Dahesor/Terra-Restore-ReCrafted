advancement revoke @s only sys:hurt_by_enemy
function sys:player/bar/hp/re_record

execute if entity @s[tag=tpee] run function sys:player/utils/tp/reciver/fool/interrupt
execute if entity @s[tag=tper] run function sys:player/utils/tp/sender/hurt
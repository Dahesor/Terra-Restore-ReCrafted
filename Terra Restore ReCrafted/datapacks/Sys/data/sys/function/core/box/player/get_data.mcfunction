data modify storage temp run set value {id:0}
execute store result storage temp run.id int 1 run scoreboard players get #temp calculator
function sys:core/box/manage/get_storage with storage temp run
execute if data storage sys:loot_box test{locked:1b} run return run function sys:core/box/player/error_locked
execute if data storage sys:loot_box test{tags:["reward"]} unless function sys:core/box/player/reward/find_name run return run function sys:core/box/player/reward/error_not_open
execute if data storage sys:loot_box test{tags:["loot"]} unless function sys:core/box/player/loots/exclude_name run return run function sys:core/box/player/loots/error_has_gotten
function sys:core/box/player/give_reward with storage sys:loot_box test
playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.6
playsound entity.item.pickup player @a ~ ~ ~ 1 0.8



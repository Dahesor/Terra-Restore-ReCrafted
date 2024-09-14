scoreboard players operation @s rolls.boss_army = boss_army_diff data
function sys:player/uid/get
data modify storage temp run set value {UID:0,UUID:"00000000-0000-0000-0000-000000000000"}
data modify storage temp run.UID set from storage sys:data player[0].UID
data modify storage temp run.UUID set from storage sys:data player[0].UUID
data modify storage sys:loot_box data[{tags:["boss_army"]}].players append from storage temp run
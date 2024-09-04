data modify storage temp run set value {id:0}
execute store result storage temp run.id int 1 run scoreboard players get @s loot_box
function sys:core/box/manage/get_storage with storage temp run

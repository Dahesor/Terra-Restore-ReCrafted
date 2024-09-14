scoreboard players operation #temp calculator = @s loot_box
execute if block ~ ~-1 ~ jigsaw run setblock ~ ~-1 ~ air replace
execute as @e[type=item,tag=box_item,distance=..10] if score @s loot_box = #temp calculator run kill
data modify storage temp run set value {id:0}
execute store result storage temp run.id int 1 run scoreboard players get @s loot_box
function sys:core/box/manage/del_from_storage with storage temp run
say Destructed!
kill
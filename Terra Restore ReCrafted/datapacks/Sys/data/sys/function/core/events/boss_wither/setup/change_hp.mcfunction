$attribute @s max_health base set $(hp)
$attribute @s armor base set $(armor)
$data modify entity @s Health set value $(hp)f
execute if score boss_1_players data matches 8.. run effect give @s resistance infinite 0 true
execute if score boss_1_players data matches 12.. run effect give @s resistance infinite 1 true
execute if score boss_1_players data matches 20.. run effect give @s resistance infinite 2 true
attribute @s follow_range base set 90
attribute @s scale base set 1.6
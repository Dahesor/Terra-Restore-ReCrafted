scoreboard players operation @s dfh.HP -= $dmg dmg
damage @s 0.000001 generic_kill
execute if score @s dfh.HP matches ..0 run function sys:core/operation/kill
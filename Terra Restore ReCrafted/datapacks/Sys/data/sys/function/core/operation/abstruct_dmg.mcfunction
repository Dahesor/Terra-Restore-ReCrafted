scoreboard players operation @s HP.dry -= $dmg dmg
damage @s 0.000001 generic_kill
execute if score @s HP.dry matches ..0 run function sys:core/operation/kill